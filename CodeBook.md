### Data Dictionary

- [1] "subject": group of 30 volunteers within an age bracket of 19-48 years. (values 1-30)                                   
- [2] "activity": is the activity being performed when readings taken                                                  
- [3] "time.body.acceleration.mean().X"                           
- [4] "time.body.acceleration.mean().Y"                           
- [5] "time.body.acceleration.mean().Z"                           
- [6] "time.body.acceleration.std().X"                            
- [7] "time.body.acceleration.std().Y"                            
- [8] "time.body.acceleration.std().Z"                            
- [9] "time.gravity.acceleration.mean().X"                        
- [10] "time.gravity.acceleration.mean().Y"                        
- [11] "time.gravity.acceleration.mean().Z"                        
- [12] "time.gravity.acceleration.std().X"                         
- [13] "time.gravity.acceleration.std().Y"                         
- [14] "time.gravity.acceleration.std().Z"                         
- [15] "time.body.acceleration.jerksignal.mean().X"                
- [16] "time.body.acceleration.jerksignal.mean().Y"                
- [17] "time.body.acceleration.jerksignal.mean().Z"                
- [18] "time.body.acceleration.jerksignal.std().X"                 
- [19] "time.body.acceleration.jerksignal.std().Y"                 
- [20] "time.body.acceleration.jerksignal.std().Z"                 
- [21] "time.body.gyroscope.mean().X"                              
- [22] "time.body.gyroscope.mean().Y"                              
- [23] "time.body.gyroscope.mean().Z"                              
- [24] "time.body.gyroscope.std().X"                               
- [25] "time.body.gyroscope.std().Y"                               
- [26] "time.body.gyroscope.std().Z"                               
- [27] "time.body.gyroscope.jerksignal.mean().X"                   
- [28] "time.body.gyroscope.jerksignal.mean().Y"                   
- [29] "time.body.gyroscope.jerksignal.mean().Z"                   
- [30] "time.body.gyroscope.jerksignal.std().X"                    
- [31] "time.body.gyroscope.jerksignal.std().Y"                    
- [32] "time.body.gyroscope.jerksignal.std().Z"                    
- [33] "time.body.acceleration.magnitude.mean()"                   
- [34] "time.body.acceleration.magnitude.std()"                    
- [35] "time.gravity.acceleration.magnitude.mean()"                
- [36] "time.gravity.acceleration.magnitude.std()"                 
- [37] "time.body.acceleration.jerksignal.magnitude.mean()"        
- [38] "time.body.acceleration.jerksignal.magnitude.std()"         
- [39] "time.body.gyroscope.magnitude.mean()"                      
- [40] "time.body.gyroscope.magnitude.std()"                       
- [41] "time.body.gyroscope.jerksignal.magnitude.mean()"           
- [42] "time.body.gyroscope.jerksignal.magnitude.std()"            
- [43] "fequency.body.acceleration.mean().X"                       
- [44] "fequency.body.acceleration.mean().Y"                       
- [45] "fequency.body.acceleration.mean().Z"                       
- [46] "fequency.body.acceleration.std().X"                        
- [47] "fequency.body.acceleration.std().Y"                        
- [48] "fequency.body.acceleration.std().Z"                        
- [49] "fequency.body.acceleration.meanFreq().X"                   
- [50] "fequency.body.acceleration.meanFreq().Y"                   
- [51] "fequency.body.acceleration.meanFreq().Z"                   
- [52] "fequency.body.acceleration.jerksignal.mean().X"            
- [53] "fequency.body.acceleration.jerksignal.mean().Y"            
- [54] "fequency.body.acceleration.jerksignal.mean().Z"            
- [55] "fequency.body.acceleration.jerksignal.std().X"             
- [56] "fequency.body.acceleration.jerksignal.std().Y"             
- [57] "fequency.body.acceleration.jerksignal.std().Z"             
- [58] "fequency.body.acceleration.jerksignal.meanFreq().X"        
- [59] "fequency.body.acceleration.jerksignal.meanFreq().Y"        
- [60] "fequency.body.acceleration.jerksignal.meanFreq().Z"        
- [61] "fequency.body.gyroscope.mean().X"                          
- [62] "fequency.body.gyroscope.mean().Y"                          
- [63] "fequency.body.gyroscope.mean().Z"                          
- [64] "fequency.body.gyroscope.std().X"                           
- [65] "fequency.body.gyroscope.std().Y"                           
- [66] "fequency.body.gyroscope.std().Z"                           
- [67] "fequency.body.gyroscope.meanFreq().X"                      
- [68] "fequency.body.gyroscope.meanFreq().Y"                      
- [69] "fequency.body.gyroscope.meanFreq().Z"                      
- [70] "fequency.body.acceleration.magnitude.mean()"               
- [71] "fequency.body.acceleration.magnitude.std()"                
- [72] "fequency.body.acceleration.magnitude.meanFreq()"           
- [73] "fequency.body.acceleration.jerksignal.magnitude.mean()"    
- [74] "fequency.body.acceleration.jerksignal.magnitude.std()"     
- [75] "fequency.body.acceleration.jerksignal.magnitude.meanFreq()"
- [76] "fequency.body.gyroscope.magnitude.mean()"                  
- [77] "fequency.body.gyroscope.magnitude.std()"                   
- [78] "fequency.body.gyroscope.magnitude.meanFreq()"              
- [79] "fequency.body.gyroscope.jerksignal.magnitude.mean()"       
- [80] "fequency.body.gyroscope.jerksignal.magnitude.std()"        
- [81] "fequency.body.gyroscope.jerksignal.magnitude.meanFreq()"   

### Feature Selection 
### =================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean




