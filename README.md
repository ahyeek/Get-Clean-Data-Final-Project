# Get-Clean-Data-Final-Project
Getting and Cleaning Data Final Project

## Submission Summary
1. A tidy data set 
2. A link to a Github repository with your script for performing the analysis
3. A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md
4. README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected

## Delivery
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Process Details
### Pre-processing steps
1. Clear working space memory.
2. Loading all necessaries libraries.
3. Check 'HARDataset' directory is in working director. If directory exist, that means the dataset is available. Else, stop processing by telling dataset not exist.
4. Load all the dataset into R if dataset is available.

### Data cleaning and fixing column names
1. Fixing columns names for XTest and XTrain
2. Combining activities and participant data into X training and testing dataset.

### Assignment 1 : Merges the training and the test sets to create one data set
1. Use rbind() on train and test dataset to create master dataset.
2. Discovered duplicated column's name. Remove duplicated column names.

### Assignment 2 : Extracts only the measurements on the mean and standard deviation for each measurement.
1. Extract the Mean index using Grep function. Param ignore case, regex +mean+ and fixed=FALSE.
2. Extract the Std index using Grep function. Param ignore case, regex +mean+ and fixed=FALSE.
3. Using Mean and Std index on master dataset.



