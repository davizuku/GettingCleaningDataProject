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

First of all, raw data was downloaded from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extracted in a folder named `data` in the same directory where the script `run_analysis.R` is. 

Once the raw data are in files locally in the system, they were loaded into `R` filling the following variables: 

* `actLabels` : is a **vector** containing the labels of the activities, i.e. 'WALKING', 'STANDING', ... obtained from the file [activity_labels.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/activity_labels.txt). It will be used later for labeling each observation in the main dataset.
* `features` : is a **vector** containing the column names for the data set, i.e. 'tBodyAcc-max()-X', ... obtained from the file [features.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/features.txt). It will be used later to provide descriptive names to the dataset. 
* `trainData` & `testData` : are **data.frame** containing the observational data for the *Train Set* and *Test Set*, obtained from the files [train/X_train.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/train/X_train.txt) and [test/X_test.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/test/X_test.txt), respectively.
* `trainLbls` & `testLbls`: are **data.frame** of only one column named `Activity` containing the labels for each observational entry for the *Train Set* and *Test Set*, obtained from the files [train/y_train.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/train/y_train.txt) and [test/y_test.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/test/y_test.txt), respectively.
* `trainSubj` & `testSubj`: are **data.frame** of only one column named `Subject` containing the subject that performed each observational entry for the *Train Set* and *Test Set*, obtained from the files [train/subject_train.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/train/subject_train.txt) and [test/subject_test.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/data/UCI%20HAR%20Dataset/test/subject_test.txt)

### Step 1 - Merging data into one data set

In this step, I used the variables of the previous step to build one single data set with all the information, following the scheme of the attached image.

First, I grouped all data coming from the *Train Set* and *Test Set* together in two data set using: 
```R
$> mTrainData <- cbind(trainSubj, trainLbls, trainData)
$> mTestData <- cbind(testSubj, testLbls, testData)
```

After that I built the complete data set using: 
```R
$> mData <- rbind(mTrainData, mTestData)
```

The variable `mData` stands for *merged* data.

![Merging data](https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png "Image obtained from the course Discussion Forum")

#### Memory clean up (optional) 

Since I did not need some of the initial variables, I decided to remove them from the workspace: 
```R
$> rm(list = c("trainData", "trainLbls", "trainSubj", "testData", "testLbls", "testSubj", "mTrainData", "mTestData"))
```

Of course, this step is entirely optional because the final data set will be the same if we do not perfom it.

### Step 2 - Subsetting columns

In this step I took the previous `mData` data set and select only those columns related to the **mean** and **standard deviation** of the attributes mesured. 
```R
$> indicesToExtract <- grep("\\.(mean|std)\\.", names(mData), ignore.case = TRUE)
$> mData <- mData[,c(1, 2, indicesToExtract)]
```

The *RegExp* used in the first instruction - `\\.(mean|std)\\.` - matches all the names containing '.mean.' or '.std.'. Using it with the `grep` command I obtained the indices of the columns I wanted to extract. Additionally, I wanted to mantain the `Subject` and `Activity` columns placed in the positions **1** and **2**, respectively. This is why I used the expression `c(1, 2, indicesToExtract)` when subsetting the columns of the data set.

### Step 3 - Providing descriptive activity labels

There are several ways to perform this step. I chosed this one because I thought it was the simplest: 
```R
$> mData$Activity <- sapply(mData$Activity, function(data){actLabels[data]})
```

This instruction assumes `actLabels` to be a **vector**. This variable was correctly initialized after loading it from the correspondent file. Using this method, only one line of code is needed and the column `Activity` is automatically converted from a `numeric vector` to a `character vector`. 

There are **other solutions** assuming the variable `actLabels` was in the form of a data set with the numeric values in one column and string values in another. The same result could have been accomplished using the functions `merge(...)` or `join(...)` (from the `plyr` package). However, I found my solution simpler as the column is substituted automatically, and no column has to be removed which is the case of the two other solutions. 


