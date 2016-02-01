
# DETAILS OF FEATURES DERIVED IN THE PROJECT

This is a project for summarizing Samsung's wearable computer testing data into a tidy data set. The actual data set is in below link and you can find all details in the zip file. At the bottom of this document you can find details about the original data set, as well. 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

I created an R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The run_analysis.R script summarizes this data set in to a data set of the avarages of mean and standart deviation values. The output of the script is tidydata.txt. 

Only the following mean and standart deviation variables are derived from the original data first grouping by the subject and activity(activiti), and calculating the avarages for each. I also added more descriptive names to the variables.  

"subject"                                                      
"tBodyAccelerometer.Mean.X"                                    
"tBodyAccelerometer.Mean.Z"                                    
"tBodyAccelerometer.StandartDeviation.Y"                       
"tGravityAccelerometer.Mean.X"                                 
"tGravityAccelerometer.Mean.Z"                                 
"tGravityAccelerometer.StandartDeviation.Y"                    
"tBodyAccelerometerJerkSignals.Mean.X"                         
"tBodyAccelerometerJerkSignals.Mean.Z"                         
"tBodyAccelerometerJerkSignals.StandartDeviation.Y"            
"tBodyGyroscope.Mean.X"                                        
"tBodyGyroscope.Mean.Z"                                        
"tBodyGyroscope.StandartDeviation.Y"                           
"tBodyGyroscopeJerkSignals.Mean.X"                             
"tBodyGyroscopeJerkSignals.Mean.Z"                             
"tBodyGyroscopeJerkSignals.StandartDeviation.Y"                
"tBodyAccelerometerMagnitude.Mean"                             
"tGravityAccelerometerMagnitude.Mean"                          
"tBodyAccelerometerJerkSignalsMagnitude.Mean"                  
"tBodyGyroscopeMagnitude.Mean"                                 
"tBodyGyroscopeJerkSignalsMagnitude.Mean"                      
"fBodyAccelerometer.Mean.X"                                    
"fBodyAccelerometer.Mean.Z"                                    
"fBodyAccelerometer.StandartDeviation.Y"                       
"fBodyAccelerometerJerkSignals.Mean.X"                         
"fBodyAccelerometerJerkSignals.Mean.Z"                         
"fBodyAccelerometerJerkSignals.StandartDeviation.Y"            
"fBodyGyroscope.Mean.X"                                        
"fBodyGyroscope.Mean.Z"                                        
"fBodyGyroscope.StandartDeviation.Y"                           
"fBodyAccelerometerMagnitude.Mean"                             
"fBodyBodyAccelerometerJerkSignalsMagnitude.Mean"              
"fBodyBodyGyroscopeMagnitude.Mean"                             
"fBodyBodyGyroscopeJerkSignalsMagnitude.Mean"                  
"activiti"                                                    
"tBodyAccelerometer.Mean.Y"                                   
"tBodyAccelerometer.StandartDeviation.X"                      
"tBodyAccelerometer.StandartDeviation.Z"                      
"tGravityAccelerometer.Mean.Y"                                
"tGravityAccelerometer.StandartDeviation.X"                   
"tGravityAccelerometer.StandartDeviation.Z"                   
"tBodyAccelerometerJerkSignals.Mean.Y"                        
"tBodyAccelerometerJerkSignals.StandartDeviation.X"           
"tBodyAccelerometerJerkSignals.StandartDeviation.Z"           
"tBodyGyroscope.Mean.Y"                                       
"tBodyGyroscope.StandartDeviation.X"                          
"tBodyGyroscope.StandartDeviation.Z"                          
"tBodyGyroscopeJerkSignals.Mean.Y"                            
"tBodyGyroscopeJerkSignals.StandartDeviation.X"               
"tBodyGyroscopeJerkSignals.StandartDeviation.Z"               
"tBodyAccelerometerMagnitude.StandartDeviation"               
"tGravityAccelerometerMagnitude.StandartDeviation"            
"tBodyAccelerometerJerkSignalsMagnitude.StandartDeviation"    
"tBodyGyroscopeMagnitude.StandartDeviation"                   
"tBodyGyroscopeJerkSignalsMagnitude.StandartDeviation"        
"fBodyAccelerometer.Mean.Y"                                   
"fBodyAccelerometer.StandartDeviation.X"                      
"fBodyAccelerometer.StandartDeviation.Z"                      
"fBodyAccelerometerJerkSignals.Mean.Y"                        
"fBodyAccelerometerJerkSignals.StandartDeviation.X"           
"fBodyAccelerometerJerkSignals.StandartDeviation.Z"           
"fBodyGyroscope.Mean.Y"                                       
"fBodyGyroscope.StandartDeviation.X"                          
"fBodyGyroscope.StandartDeviation.Z"                          
"fBodyAccelerometerMagnitude.StandartDeviation"               
"fBodyBodyAccelerometerJerkSignalsMagnitude.StandartDeviation"
"fBodyBodyGyroscopeMagnitude.StandartDeviation"               
"fBodyBodyGyroscopeJerkSignalsMagnitude.StandartDeviation"   

# ALL FEATURES EXISTING IN THE ORIGINAL DATA SET

Feature Selection 
=================

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

The complete list of variables of each feature vector is available in 'features.txt' in the zip file of original data. 
