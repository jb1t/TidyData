library(dplyr)
library(readr)

fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataFolder <- "./data"
datasetFolder <- "UCI HAR Dataset"
sourceFile <- paste0(datasetFolder, ".zip")
sourceFilePath <- paste(dataFolder, sourceFile, sep = "/")

if(!file.exists(dataFolder)){
    dir.create(dataFolder)
}

if(!file.exists(sourceFilePath))
{
    download.file(fileUrl, destfile = sourceFilePath, method = "curl")
}

unzip(sourceFilePath, exdir = dataFolder)

# Read activity labels
activityFile <- paste(dataFolder, datasetFolder, "activity_labels.txt", sep = "/")
activity_tbl <- read_delim(activityFile, delim = " ", col_names = c("activity_id", "activity_name"))

# Read in features and filter down to only include mean and std
featureFile <- paste(dataFolder, datasetFolder, "features.txt", sep = "/")
feature_tbl <- read_delim(featureFile, delim = " ", col_names = c("feature_id", "feature"))

# Read in test data
testFolder <- paste(dataFolder, datasetFolder, "test", sep = "/")
testSubjectFile <- paste(testFolder, "subject_test.txt", sep = "/")
testXFile <- paste(testFolder, "X_test.txt", sep = "/")
testYFile <- paste(testFolder, "y_test.txt", sep = "/")
testYdf <- read_table(testYFile, col_names = c("activity_id"))
testSubjectData <- read_table(testSubjectFile, col_names = c("subject_id"))
testXdf <- read_table(testXFile, col_names = FALSE)
testYMerged <- merge(testYdf, activity_tbl)
testData <- cbind(testSubjectData, testYMerged, testXdf)

# Read in training data
trainFolder <- paste(dataFolder, datasetFolder, "train", sep = "/")
trainSubjectFile <- paste(trainFolder, "subject_train.txt", sep = "/")
trainXFile <- paste(trainFolder, "X_train.txt", sep = "/")
trainYFile <- paste(trainFolder, "y_train.txt", sep = "/")
trainYdf <- read_table(trainYFile, col_names = c("activity_id"))
trainSubjectData <- read_table(trainSubjectFile, col_names = c("subject_id"))
trainXdf <- read_table(trainXFile, col_names = FALSE)
trainYMerged <- merge(trainYdf, activity_tbl)
trainData <- cbind(trainSubjectData, trainYMerged, trainXdf)

# Merge training and test data sets together
activityData <- rbind(testData, trainData)

# Clean up feature Names
feature_tbl$feature<-gsub("BodyBody","Body",feature_tbl$feature)
feature_tbl$feature<-gsub("Body",".body",feature_tbl$feature)
feature_tbl$feature<-gsub("t.body","time.body",feature_tbl$feature)
feature_tbl$feature<-gsub("tGravity","time.gravity",feature_tbl$feature)
feature_tbl$feature<-gsub("^f","fequency",feature_tbl$feature)
feature_tbl$feature<-gsub("Acc",".acceleration",feature_tbl$feature)
feature_tbl$feature<-gsub("Gyro",".gyroscope",feature_tbl$feature)
feature_tbl$feature<-gsub("Mag",".magnitude",feature_tbl$feature)
feature_tbl$feature<-gsub("Jerk",".jerksignal",feature_tbl$feature)
feature_tbl$feature<-gsub("-",".",feature_tbl$feature)
column_headers <- c("subject", "activityid", "activity", as.character(feature_tbl[[2]]))
colnames(activityData) <- column_headers

keep_columns <- feature_tbl %>% 
    filter(grepl("mean|std", feature)) %>%
    select(feature)
keep_columns <- unlist(rbind("subject","activity", keep_columns))

# Remove all the NON std and mean columns
activityData <- activityData[keep_columns]

# Average all the data by subject and activity
avg_data <- activityData %>%
    group_by(subject, activity) %>%
    summarise_each(funs(mean))

# Save the averaged data
tidyFile <- paste(dataFolder, "tidyData.txt", sep = "/")
write.table(avg_data, file=tidyFile, sep="\t", row.names=F)

# Clean up variables in the environment
ls_data <- ls()
keep_data <- c ("activityData", "avg_data")
rm(list=ls_data[! ls_data %in% keep_data])
