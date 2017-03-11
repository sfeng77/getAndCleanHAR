# Getting And Cleaning HAR Dataset
The course project for Getting and Cleaning Data Course Project

The description for the original dataset, can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original dataset can be found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# A list of files in this repo
* `README.md`   
This file.

* `CodeBook.md`
The codebook describes the variables, the data, and the steps performed to clean up the data.

* `run_analysis.R`  
The R script to perform the steps described in the codebook.
In this script, three functions are defined as following:
  * `getAndLabel` Read the dataset and labels, combine training set and test set data,
  select the `mean` and `std` variables, and apply the labels.
  * `average_data`  Calculate the average of each variable, for each subject
  and each activity, and store the data in a new dataframe.

  * `run_analysis` Call the previous two functions to generate the tidy dataset, and write to the output file.

* `tidyDataset.txt`
The txt file contains the tidy dataset.


# How to run
* Download and unzip the original dataset.
* In R console, run the following command:
```R
source("run_analysis.R")
run_analysis()
```
* Inspect output file as needed.
