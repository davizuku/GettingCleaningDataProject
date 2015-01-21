
# 0. Prepare files to run the analysis

library(dplyr)


#	Download .zip file

zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipName <- "dataset.zip"

if (!file.exists(zipName)){
	download.file(zipUrl, destfile = zipName)
	downloadDate <- date()
}

#	Extract data

dataFolder <- "data"
if (!file.exists(dataFolder)){
	dir.create(dataFolder)
	unzip(zipName, exdir = dataFolder)
}

# Useful data

actLabels <- read.table("data//UCI HAR Dataset//activity_labels.txt")
actLabels <- as.character(actLabels[,2])

features <- read.table("data//UCI HAR Dataset//features.txt")
features <- as.character(features[,2])

# Data sets

trainData <- read.table("data//UCI HAR Dataset//train//X_train.txt", col.names = features)
trainLbls <- read.table("data//UCI HAR Dataset//train//y_train.txt", col.names = c("Activity"))
trainSubj <- read.table("data//UCI HAR Dataset//train//subject_train.txt", col.names = c("Subject"))

testData <- read.table("data//UCI HAR Dataset//test//X_test.txt", col.names = features)
testLbls <- read.table("data//UCI HAR Dataset//test//y_test.txt", col.names = c("Activity"))
testSubj <- read.table("data//UCI HAR Dataset//test//subject_test.txt", col.names = c("Subject"))

# 1. Merges the training and the test sets to create one data set.

mTrainData <- cbind(trainSubj, trainLbls, trainData)
mTestData <- cbind(testSubj, testLbls, testData)

mData <- rbind(mTrainData, mTestData)

# Keep memory clean
rm(list = c("trainData", "trainLbls", "trainSubj", "testData", "testLbls", "testSubj", "mTrainData", "mTestData"))


# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

indicesToExtract <- grep("\\.(mean|std)\\.", names(mData), ignore.case = TRUE)
mData <- mData[,c(1, 2, indicesToExtract)] # Preserve subject and activity label

# 3. Uses descriptive activity names to name the activities in the data set

# Having actLabels in the form of a data set with the numeric values in one column
# and string values in another, the same effect could have been accomplished using 
# the functions merge(...) or join(...) (from the plyr package). 
# However I found simpler this solution as the column is substituted automatically, 
# and no column has to be removed which is the case of the two other solutions. 

mData$Activity <- sapply(mData$Activity, function(data){actLabels[data]})


# 4. Appropriately labels the data set with descriptive variable names. 

dataNames <- names(mData)
dataNames <- sub("^t", "time", dataNames)
dataNames <- sub("^f", "freq", dataNames)
dataNames <- sub("\\.\\.$", "", dataNames)
dataNames <- sub("\\.\\.\\.", "\\.", dataNames)
dataNames <- sub("\\.mean", "Mean", dataNames)
dataNames <- sub("\\.std", "Std", dataNames)
# Point separator for X, Y, Z components is left on purpose to distinguish vectors easily

names(mData) <- dataNames

# 5. From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.

finalData <- ddply(mData, c(.(Activity), .(Subject)), numcolwise(mean))


# Write data to a file
write.table(finalData, file = "finalData.txt", row.name = FALSE)
