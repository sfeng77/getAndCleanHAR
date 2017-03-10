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
In this script, a function called `getAndClean` is defined. This function load the data and produce the tidy dataset.
* `tidyDataSet.txt`
The txt file contains the tidy dataset.
* `measurement_names.txt`
The txt file that contains the name for all measurements included in the dataset.

# How to run
* Download and unzip the original dataset.
* In R console, run the following command:
```R
source("run_analysis.R")
```
* Inspect and use the `df` dataframe as needed.
