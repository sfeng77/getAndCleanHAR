# Codebook for Getting and Cleaning HAR Dataset Project

## The variables
In this dataset, the average of 66 measurements for 30 test subjects in 6 activities are recorded.

The variables are a subset of original measurements, with `mean` or `std` but not `meanFreq`in the name, including:
```
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()
```
The units of each measurements are the same as in the original data.

The test subjects are labeled "1" ~ "30".

 The activities include:
* `LAYING`             
* `SITTING`            
* `STANDING`           
* `WALKING`           
* `WALKING_DOWNSTAIRS`
* `WALKING_UPSTAIRS`




## The summary steps

1.  Read the training set and test set data, including `train/X_train.txt` and `test/X_test.txt`, , and  merge the training set and test set data using `rbind`.
2.  Read the feature labels from `features.txt`, and label the data using `colnames`.
3.  Select features that are mean and standard deviation of measurements from the feature list.
4.  Subset the data according to the selection.
5.  Read the activity names from `activity_labels.txt`.
6.  Read the activity labels from `train/y_train.txt` and `test/y_test.txt`
7.  Look up the activity names using labels.
8.  Read the subject labels from `activity_labels.txt`.
9.  Merge the data with subject labels and activity names.
9.  Select all variables other than the subjects and activity names from the dataframe.
10. Use `aggregate` to calculate the average of each measurement and each activity, and store the result in the tidy set.
11. Use `write.table` to save the dataset in the output file.
