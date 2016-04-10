# Code Book
## Describes the variables, the data, and any transformations or work that  performed to clean up the data
### General information
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Dataset files
- `README.txt` : General information about the data files.
- `features_info.txt`: Shows information about the variables used on the feature vector.
- `features.txt`: List of all features.
- `activity_labels.txt`: Links the class labels with their activity name.
- `train/X_train.txt`: Training set.
- `train/y_train.txt`: Training labels.
- `test/X_test.txt`: Test set.
- `test/y_test.txt`: Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

### Notes:
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

## ID Fields
* `subject` - The participant ("subject") ID
* `activity` - The label of the activity performed when the corresponding measurements were taken

## Activity Labels
* 1 : `WALKING`
* 2 : `WALKING_UPSTAIRS`
* 3 : `WALKING_DOWNSTAIRS`
* 4 : `SITTING`
* 5 : `STANDING`
* 6 : `LAYING`

## Extracted Feature Fields
- [1] "participants" "activities" "timeBodyAccelerator-mean()-X"                        
- [4] "timeBodyAccelerator-mean()-Y "timeBodyAccelerator-mean()-Z" "timeGravityAccelerator-mean()-X"                     
- [7] "timeGravityAccelerator-mean()-Y" "timeGravityAccelerator-mean()-Z" "timeBodyAcceleratorJerk-mean()-X"                    
- [10] "timeBodyAcceleratorJerk-mean()-Y" "timeBodyAcceleratorJerk-mean()-Z" "timeBodyGyroscope-mean()-X"                          
- [13] "timeBodyGyroscope-mean()-Y" "timeBodyGyroscope-mean()-Z" "timeBodyGyroscopeJerk-mean()-X"                      
- [16] "timeBodyGyroscopeJerk-mean()-Y" "timeBodyGyroscopeJerk-mean()-Z" "timeBodyAcceleratorMagnitude-mean()"                 
- [19] "timeGravityAcceleratorMagnitude-mean()" "timeBodyAcceleratorJerkMagnitude-mean()" "timeBodyGyroscopeMagnitude-mean()"
- [22] "timeBodyGyroscopeJerkMagnitude-mean()" "frequencyBodyAccelerator-mean()-X" "frequencyBodyAccelerator-mean()-Y" 
- [25] "frequencyBodyAccelerator-mean()-Z" "frequencyBodyAccelerator-meanFreq()-X" "frequencyBodyAccelerator-meanFreq()-Y"
- [28] "frequencyBodyAccelerator-meanFreq()-Z" "frequencyBodyAcceleratorJerk-mean()-X" "frequencyBodyAcceleratorJerk-mean()-Y"
- [31] "frequencyBodyAcceleratorJerk-mean()-Z" "frequencyBodyAcceleratorJerk-meanFreq()-X" "frequencyBodyAcceleratorJerk-meanFreq()-Y"
- [34] "frequencyBodyAcceleratorJerk-meanFreq()-Z" "frequencyBodyGyroscope-mean()-X" "frequencyBodyGyroscope-mean()-Y"
- [37] "frequencyBodyGyroscope-mean()-Z" "frequencyBodyGyroscope-meanFreq()-X" "frequencyBodyGyroscope-meanFreq()-Y"                 
- [40] "frequencyBodyGyroscope-meanFreq()-Z" "frequencyBodyAcceleratorMagnitude-mean()" "frequencyBodyAcceleratorMagnitude-meanFreq()"
- [43] "frequencyBodyBodyAcceleratorJerkMagnitude-mean()" "frequencyBodyBodyAcceleratorJerkMagnitude-meanFreq()" "frequencyBodyBodyGyroscopeMagnitude-mean()"
- [46] "frequencyBodyBodyGyroscopeMagnitude-meanFreq()" "frequencyBodyBodyGyroscopeJerkMagnitude-mean()" "frequencyBodyBodyGyroscopeJerkMagnitude-meanFreq()"  
- [49] "angle(tBodyAcceleratorMean,gravity)" "angle(tBodyAcceleratorJerkMean),gravityMean)" "angle(tBodyGyroscopeMean,gravityMean)"
- [52] "angle(tBodyGyroscopeJerkMean,gravityMean)" "angle(X,gravityMean)""angle(Y,gravityMean)"                                
- [55] "angle(Z,gravityMean)" "timeBodyAccelerator-std()-X" "timeBodyAccelerator-std()-Y"                         
- [58] "timeBodyAccelerator-std()-Z" "timeGravityAccelerator-std()-X" "timeGravityAccelerator-std()-Y"                      
- [61] "timeGravityAccelerator-std()-Z" "timeBodyAcceleratorJerk-std()-X" "timeBodyAcceleratorJerk-std()-Y"                     
- [64] "timeBodyAcceleratorJerk-std()-Z" "timeBodyGyroscope-std()-X" "timeBodyGyroscope-std()-Y"                           
- [67] "timeBodyGyroscope-std()-Z" "timeBodyGyroscopeJerk-std()-X" "timeBodyGyroscopeJerk-std()-Y"                       
- [70] "timeBodyGyroscopeJerk-std()-Z" "timeBodyAcceleratorMagnitude-std()" "timeGravityAcceleratorMagnitude-std()"               
- [73] "timeBodyAcceleratorJerkMagnitude-std()" "timeBodyGyroscopeMagnitude-std()" "timeBodyGyroscopeJerkMagnitude-std()"
- [76] "frequencyBodyAccelerator-std()-X" "frequencyBodyAccelerator-std()-Y" "frequencyBodyAccelerator-std()-Z"                    
- [79] "frequencyBodyAcceleratorJerk-std()-X" "frequencyBodyAcceleratorJerk-std()-Y" "frequencyBodyAcceleratorJerk-std()-Z"
- [82] "frequencyBodyGyroscope-std()-X" "frequencyBodyGyroscope-std()-Y" "frequencyBodyGyroscope-std()-Z"                      
- [85] "frequencyBodyAcceleratorMagnitude-std()" "frequencyBodyBodyAcceleratorJerkMagnitude-std()" "frequencyBodyBodyGyroscopeMagnitude-std()"           
- [88] "frequencyBodyBodyGyroscopeJerkMagnitude-std()" "descriptive"
