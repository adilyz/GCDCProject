
This is a project for summarizing Samsung's wearable computer testing data into a tidy data set. The actual data set is in below link and you can find all details in the zip file.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

I created an R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The run_analysis.R script summarizes this data set in to a data set of the avarages of mean and standart deviation values. The output of the script is tidydata.txt. 

Only the following mean and standart deviation variables are derived from the original data first grouping by the subject and activity(activiti), and calculating the avarages for each. 

 [1] "subject"                                                      "activiti"                                                    
 [3] "tBodyAccelerometer.Mean.X"                                    "tBodyAccelerometer.Mean.Y"                                   
 [5] "tBodyAccelerometer.Mean.Z"                                    "tBodyAccelerometer.StandartDeviation.X"                      
 [7] "tBodyAccelerometer.StandartDeviation.Y"                       "tBodyAccelerometer.StandartDeviation.Z"                      
 [9] "tGravityAccelerometer.Mean.X"                                 "tGravityAccelerometer.Mean.Y"                                
[11] "tGravityAccelerometer.Mean.Z"                                 "tGravityAccelerometer.StandartDeviation.X"                   
[13] "tGravityAccelerometer.StandartDeviation.Y"                    "tGravityAccelerometer.StandartDeviation.Z"                   
[15] "tBodyAccelerometerJerkSignals.Mean.X"                         "tBodyAccelerometerJerkSignals.Mean.Y"                        
[17] "tBodyAccelerometerJerkSignals.Mean.Z"                         "tBodyAccelerometerJerkSignals.StandartDeviation.X"           
[19] "tBodyAccelerometerJerkSignals.StandartDeviation.Y"            "tBodyAccelerometerJerkSignals.StandartDeviation.Z"           
[21] "tBodyGyroscope.Mean.X"                                        "tBodyGyroscope.Mean.Y"                                       
[23] "tBodyGyroscope.Mean.Z"                                        "tBodyGyroscope.StandartDeviation.X"                          
[25] "tBodyGyroscope.StandartDeviation.Y"                           "tBodyGyroscope.StandartDeviation.Z"                          
[27] "tBodyGyroscopeJerkSignals.Mean.X"                             "tBodyGyroscopeJerkSignals.Mean.Y"                            
[29] "tBodyGyroscopeJerkSignals.Mean.Z"                             "tBodyGyroscopeJerkSignals.StandartDeviation.X"               
[31] "tBodyGyroscopeJerkSignals.StandartDeviation.Y"                "tBodyGyroscopeJerkSignals.StandartDeviation.Z"               
[33] "tBodyAccelerometerMagnitude.Mean"                             "tBodyAccelerometerMagnitude.StandartDeviation"               
[35] "tGravityAccelerometerMagnitude.Mean"                          "tGravityAccelerometerMagnitude.StandartDeviation"            
[37] "tBodyAccelerometerJerkSignalsMagnitude.Mean"                  "tBodyAccelerometerJerkSignalsMagnitude.StandartDeviation"    
[39] "tBodyGyroscopeMagnitude.Mean"                                 "tBodyGyroscopeMagnitude.StandartDeviation"                   
[41] "tBodyGyroscopeJerkSignalsMagnitude.Mean"                      "tBodyGyroscopeJerkSignalsMagnitude.StandartDeviation"        
[43] "fBodyAccelerometer.Mean.X"                                    "fBodyAccelerometer.Mean.Y"                                   
[45] "fBodyAccelerometer.Mean.Z"                                    "fBodyAccelerometer.StandartDeviation.X"                      
[47] "fBodyAccelerometer.StandartDeviation.Y"                       "fBodyAccelerometer.StandartDeviation.Z"                      
[49] "fBodyAccelerometerJerkSignals.Mean.X"                         "fBodyAccelerometerJerkSignals.Mean.Y"                        
[51] "fBodyAccelerometerJerkSignals.Mean.Z"                         "fBodyAccelerometerJerkSignals.StandartDeviation.X"           
[53] "fBodyAccelerometerJerkSignals.StandartDeviation.Y"            "fBodyAccelerometerJerkSignals.StandartDeviation.Z"           
[55] "fBodyGyroscope.Mean.X"                                        "fBodyGyroscope.Mean.Y"                                       
[57] "fBodyGyroscope.Mean.Z"                                        "fBodyGyroscope.StandartDeviation.X"                          
[59] "fBodyGyroscope.StandartDeviation.Y"                           "fBodyGyroscope.StandartDeviation.Z"                          
[61] "fBodyAccelerometerMagnitude.Mean"                             "fBodyAccelerometerMagnitude.StandartDeviation"               
[63] "fBodyBodyAccelerometerJerkSignalsMagnitude.Mean"              "fBodyBodyAccelerometerJerkSignalsMagnitude.StandartDeviation"
[65] "fBodyBodyGyroscopeMagnitude.Mean"                             "fBodyBodyGyroscopeMagnitude.StandartDeviation"               
[67] "fBodyBodyGyroscopeJerkSignalsMagnitude.Mean"                  "fBodyBodyGyroscopeJerkSignalsMagnitude.StandartDeviation"   
