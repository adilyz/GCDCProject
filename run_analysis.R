# This is the R script called run_analysis.R that does the following.

# 1- Merges the training and the test sets to create one data set.
# 2- Extracts only the measurements on the mean and standard deviation for each measurement.
# 3- Uses descriptive activity names to name the activities in the data set
# 4- Appropriately labels the data set with descriptive variable names.
# 5- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# 6- Export the data to txt file. 

# This is the directory where the data is saved.
setwd("D:/COURSERA/Cleaning Data/rworkdir/UCI HAR Dataset")

# Reading activity labels and features.
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

# Reading test set.
X_test <- read.table("./test/X_test.txt",col.names = gsub("()","",features$V2))
y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")
names(y_test) <- "activity"
names(subject_test) <- "subject"

# Reading training set.
X_train <- read.table("./train/X_train.txt",col.names = gsub("()","",features$V2))
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")
names(y_train) <- "activity"
names(subject_train) <- "subject"

# loading dplyr and converting data tables to tbl_df.
library(dplyr)
features <- tbl_df(features)
X_test <- tbl_df(X_test)
y_test <- tbl_df(y_test)
subject_test <- tbl_df(subject_test)
X_train <- tbl_df(X_train)
y_train <- tbl_df(y_train)
subject_train <- tbl_df(subject_train)

# merging tables.
X_test[,"subject"] <- subject_test
X_test[,"activity"] <- y_test
X_train[,"activity"] <- y_train
X_train[,"subject"] <- subject_train

# appending training and test sets.
compdata <- rbind(X_train, X_test)

# selecting mean and std columns into a new data set and fixing column names. 
fdata <- compdata[,grepl("\\.[Mm]ean\\.|\\.[Ss]td\\.|^subject$|^activity$",names(compdata))]
names(fdata) <- gsub("\\.\\.",".",names(fdata))
names(fdata) <- gsub("\\.\\.",".",names(fdata))
fdata$activiti <- activity_labels[fdata$activity,"V2"]

# group by subject and activity and save their means to tidy data set. 
tidydata <- fdata %>% group_by(subject,activiti) %>% summarize_each(funs(mean))

# give descriptive variable names to the tidy data set. 
names(tidydata) <- gsub("Acc","Accelerometer",names(tidydata))
names(tidydata) <- gsub("std","StandartDeviation",names(tidydata))
names(tidydata) <- gsub("Mag","Magnitude",names(tidydata))
names(tidydata) <- gsub("Jerk","JerkSignals",names(tidydata))
names(tidydata) <- gsub("Gyro","Gyroscope",names(tidydata))
names(tidydata) <- gsub(".mean",".Mean",names(tidydata))
names(tidydata) <- gsub("\\.$","",names(tidydata))
tidydata <- tidydata[,1:68]

# export tidy data to tidydata.txt
write.table(tidydata,"./tidydata.txt",sep = " ",row.name=FALSE)
