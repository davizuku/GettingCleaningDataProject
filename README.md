# Getting and Cleanning Data - Course Project

## Introduction

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

## Steps

You should create one R script called `run_analysis.R` that does the following: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#### Note on steps description

The following steps performed to tidy the raw data obtained through internet have been executed on a `Windows 7 - x64` machine with `R v3.1.2`. The process has been repeated all along the development stage to ensure the same results are obtained. 

## Project description

### Step 0 - Obtaining data

First of all, raw data have been downloaded from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extracted in a folder named `data` in the same directory where the script `run_analysis.R` is. 

Once the raw data are in files locally in the system, they are loaded into `R` filling the following variables: 

* `actLabels` : is a **vector** containing the labels of the activities, i.e. 'WALKING', 'STANDING', ... obtained from the file [activity_labels.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/activity_labels.txt). It will be used later for labeling each observation in the main dataset.
* `features` : is a **vector** containing the column names for the data set, i.e. 'tBodyAcc-max()-X', ... obtained from the file [features.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/features.txt). It will be used later to provide descriptive names to the dataset. 
* `trainData` & `testData` : are **data.frame** containing the observational data for the *Train Set* and *Test Set*, obtained from the files [train/X_train.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/train/X_train.txt) and [test/X_test.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/test/X_test.txt), respectively.
* `trainLbls` & `testLbls`: are **data.frame** of only one column named `Activity` containing the labels for each observational entry for the *Train Set* and *Test Set*, obtained from the files [train/y_train.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/train/y_train.txt) and [test/y_test.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/test/y_test.txt), respectively.
* `trainSubj` & `testSubj`: are **data.frame** of only one column named `Subject` containing the subject that performed each observational entry for the *Train Set* and *Test Set*, obtained from the files [train/subject_train.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/train/subject_train.txt) and [test/subject_test.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/test/subject_test.txt)

### Step 1 - Merging data into one data set

![Merging data](https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png)
