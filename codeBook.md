# Codebook for Getting and Cleaning HAR Dataset Project

## The variables
In this dataset, the average of 66 measurements for 30 test subjects in 6 activities are recorded.

The variables are a subset of original measurements, with `mean` or `std` but not `meanFreq`in the name.
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
