## Getting and Cleaning Data Project Assignment - Week 4
## run_analysis.R

# Loading all necessaries libraries
rm(list = ls())
library(plyr) 
library(data.table) 
library(dplyr)

if(!dir.exists("./HARDataset")) {
    stop("Dataset is not available.")
} else {
    ## Loading all dataset into R.
    YTest <- read.table("HARDataset/test/y_test.txt")
    XTest <- read.table("HARDataset/test/X_test.txt")
    SubjectTest <- read.table("HARDataset/test/subject_test.txt")
    YTrain <- read.table("HARDataset/train/y_train.txt")
    XTrain <- read.table("HARDataset/train/X_train.txt")
    SubjectTrain <- read.table("HARDataset/train/subject_train.txt")
    Features <- read.table("HARDataset/features.txt")
    ActLabels <- read.table("HARDataset/activity_labels.txt")
}

## Fix columns names for XTest and XTrain
colnames(XTrain) <- t(Features[2])
colnames(XTest) <- t(Features[2])

## Combining activities and participant data into X training and testing dataset.
XTrain$activities <- YTrain[, 1]
XTrain$participants <- SubjectTrain[, 1]
XTest$activities <- YTest[, 1]
XTest$participants <- SubjectTest[, 1]

## Assigment 1 : Merges the training and the test sets to create one data set
Master <- rbind(XTrain, XTest)
duplicated(colnames(Master))
Master <- Master[, !duplicated(colnames(Master))]

## Assignment 2 : Extracts only the measurements on the mean and standard deviation for each measurement.
MeanIdx <- grep("+mean+", names(Master), value = FALSE, fixed = FALSE, ignore.case = TRUE)
StdIdx <- grep("+std+", names(Master), value = FALSE, fixed = FALSE, ignore.case = TRUE)
MeanExtract <- Master[MeanIdx]
StdExtract <- Master[StdIdx]
MasterExtract <- cbind(Master[,c('participants', 'activities')], MeanExtract, StdExtract)

## Assignment 3 : Uses descriptive activity names to name the activities in the data set
colnames(ActLabels) = c('activities', 'descriptive')
MasterExtract <- merge(MasterExtract, ActLabels, by = "activities", all.x=TRUE)

### Assignment 4 : Appropriately labels the data set with descriptive variable names
names(MasterExtract) <- gsub("Acc", "Accelerator", names(MasterExtract))
names(MasterExtract) <- gsub("Mag", "Magnitude", names(MasterExtract))
names(MasterExtract) <- gsub("Gyro", "Gyroscope", names(MasterExtract))
names(MasterExtract) <- gsub("^t", "time", names(MasterExtract))
names(MasterExtract) <- gsub("^f", "frequency", names(MasterExtract))

MasterExtract$participants <- as.character(MasterExtract$participants)
for(val in (1:30)){
    pid <- as.character(val)
    MasterExtract$participants[MasterExtract$participants == pid] <- sprintf("Participant %02d", val)
}

## Assignment 5 : From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
Master_Copy <- data.table(MasterExtract)
TidyData <- Master_Copy[, lapply(.SD, mean), by = c('participants', 'activities')]

TidyData <- subset(TidyData, select=c(1,2,89,3:88))
TidyData <- TidyData[order(TidyData$participants, TidyData$activities),]
write.table(TidyData, file = "TidyData.txt", row.names = FALSE)









