### Getting and Cleaning Data - Course Project
# Code Book

## Data description

After transforming the raw data following the steps of the [README.md](https://github.com/davizuku/GettingCleaningDataProject/blob/master/README.md) file. In this document the features of the resulting data set are presented. 

The following table shows a brief description and the units of each of the columns of the data set in the file [finalData.txt](https://github.com/davizuku/GettingCleaningDataProject/blob/master/finalData.txt) submitted to the course project. 

| Column name | Description | Units of mesurement |
|---|---|---|
|`Activity` | Activity performed for each Subject. | String|
|`Subject` | Subject that performed the activity | Number|
|`timeBodyAccMean.X` | Average **time** for each *Activity* and *Subject* for the `tBodyAccMean.X` sensor attribute.  | Number (seconds) |
|`timeBodyAccMean.Y` | Average **time** for each *Activity* and *Subject* for the `tBodyAccMean.Y` sensor attribute.  | Number (seconds) |
|`timeBodyAccMean.Z` | Average **time** for each *Activity* and *Subject* for the `tBodyAccMean.Z` sensor attribute.  | Number (seconds) |
|`timeBodyAccStd.X` | Average **time** for each *Activity* and *Subject* for the `tBodyAccStd.X` sensor attribute.  | Number (seconds) |
|`timeBodyAccStd.Y` | Average **time** for each *Activity* and *Subject* for the `tBodyAccStd.Y` sensor attribute.  | Number (seconds) |
|`timeBodyAccStd.Z` | Average **time** for each *Activity* and *Subject* for the `tBodyAccStd.Z` sensor attribute.  | Number (seconds) |
|`timeGravityAccMean.X` | Average **time** for each *Activity* and *Subject* for the `tGravityAccMean.X` sensor attribute.  | Number (seconds) |
|`timeGravityAccMean.Y` | Average **time** for each *Activity* and *Subject* for the `tGravityAccMean.Y` sensor attribute.  | Number (seconds) |
|`timeGravityAccMean.Z` | Average **time** for each *Activity* and *Subject* for the `tGravityAccMean.Z` sensor attribute.  | Number (seconds) |
|`timeGravityAccStd.X` | Average **time** for each *Activity* and *Subject* for the `tGravityAccStd.X` sensor attribute.  | Number (seconds) |
|`timeGravityAccStd.Y` | Average **time** for each *Activity* and *Subject* for the `tGravityAccStd.Y` sensor attribute.  | Number (seconds) |
|`timeGravityAccStd.Z` | Average **time** for each *Activity* and *Subject* for the `tGravityAccStd.Z` sensor attribute.  | Number (seconds) |
|`timeBodyAccJerkMean.X` | Average **time** for each *Activity* and *Subject* for the `tBodyAccJerkMean.X` sensor attribute.  | Number (seconds) |
|`timeBodyAccJerkMean.Y` | Average **time** for each *Activity* and *Subject* for the `tBodyAccJerkMean.Y` sensor attribute.  | Number (seconds) |
|`timeBodyAccJerkMean.Z` | Average **time** for each *Activity* and *Subject* for the `tBodyAccJerkMean.Z` sensor attribute.  | Number (seconds) |
|`timeBodyAccJerkStd.X` | Average **time** for each *Activity* and *Subject* for the `tBodyAccJerkStd.X` sensor attribute.  | Number (seconds) |
|`timeBodyAccJerkStd.Y` | Average **time** for each *Activity* and *Subject* for the `tBodyAccJerkStd.Y` sensor attribute.  | Number (seconds) |
|`timeBodyAccJerkStd.Z` | Average **time** for each *Activity* and *Subject* for the `tBodyAccJerkStd.Z` sensor attribute.  | Number (seconds) |
|`timeBodyGyroMean.X` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroMean.X` sensor attribute.  | Number (seconds) |
|`timeBodyGyroMean.Y` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroMean.Y` sensor attribute.  | Number (seconds) |
|`timeBodyGyroMean.Z` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroMean.Z` sensor attribute.  | Number (seconds) |
|`timeBodyGyroStd.X` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroStd.X` sensor attribute.  | Number (seconds) |
|`timeBodyGyroStd.Y` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroStd.Y` sensor attribute.  | Number (seconds) |
|`timeBodyGyroStd.Z` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroStd.Z` sensor attribute.  | Number (seconds) |
|`timeBodyGyroJerkMean.X` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroJerkMean.X` sensor attribute.  | Number (seconds) |
|`timeBodyGyroJerkMean.Y` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroJerkMean.Y` sensor attribute.  | Number (seconds) |
|`timeBodyGyroJerkMean.Z` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroJerkMean.Z` sensor attribute.  | Number (seconds) |
|`timeBodyGyroJerkStd.X` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroJerkStd.X` sensor attribute.  | Number (seconds) |
|`timeBodyGyroJerkStd.Y` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroJerkStd.Y` sensor attribute.  | Number (seconds) |
|`timeBodyGyroJerkStd.Z` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroJerkStd.Z` sensor attribute.  | Number (seconds) |
|`timeBodyAccMagMean` | Average **time** for each *Activity* and *Subject* for the `tBodyAccMagMean` sensor attribute.  | Number (seconds) |
|`timeBodyAccMagStd` | Average **time** for each *Activity* and *Subject* for the `tBodyAccMagStd` sensor attribute.  | Number (seconds) |
|`timeGravityAccMagMean` | Average **time** for each *Activity* and *Subject* for the `tGravityAccMagMean` sensor attribute.  | Number (seconds) |
|`timeGravityAccMagStd` | Average **time** for each *Activity* and *Subject* for the `tGravityAccMagStd` sensor attribute.  | Number (seconds) |
|`timeBodyAccJerkMagMean` | Average **time** for each *Activity* and *Subject* for the `tBodyAccJerkMagMean` sensor attribute.  | Number (seconds) |
|`timeBodyAccJerkMagStd` | Average **time** for each *Activity* and *Subject* for the `tBodyAccJerkMagStd` sensor attribute.  | Number (seconds) |
|`timeBodyGyroMagMean` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroMagMean` sensor attribute.  | Number (seconds) |
|`timeBodyGyroMagStd` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroMagStd` sensor attribute.  | Number (seconds) |
|`timeBodyGyroJerkMagMean` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroJerkMagMean` sensor attribute.  | Number (seconds) |
|`timeBodyGyroJerkMagStd` | Average **time** for each *Activity* and *Subject* for the `tBodyGyroJerkMagStd` sensor attribute.  | Number (seconds) |
|`freqBodyAccMean.X` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccMean.X` sensor attribute.  | Number (Hz) |
|`freqBodyAccMean.Y` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccMean.Y` sensor attribute.  | Number (Hz) |
|`freqBodyAccMean.Z` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccMean.Z` sensor attribute.  | Number (Hz) |
|`freqBodyAccStd.X` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccStd.X` sensor attribute.  | Number (Hz) |
|`freqBodyAccStd.Y` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccStd.Y` sensor attribute.  | Number (Hz) |
|`freqBodyAccStd.Z` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccStd.Z` sensor attribute.  | Number (Hz) |
|`freqBodyAccJerkMean.X` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccJerkMean.X` sensor attribute.  | Number (Hz) |
|`freqBodyAccJerkMean.Y` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccJerkMean.Y` sensor attribute.  | Number (Hz) |
|`freqBodyAccJerkMean.Z` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccJerkMean.Z` sensor attribute.  | Number (Hz) |
|`freqBodyAccJerkStd.X` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccJerkStd.X` sensor attribute.  | Number (Hz) |
|`freqBodyAccJerkStd.Y` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccJerkStd.Y` sensor attribute.  | Number (Hz) |
|`freqBodyAccJerkStd.Z` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccJerkStd.Z` sensor attribute.  | Number (Hz) |
|`freqBodyGyroMean.X` | Average **freq** for each *Activity* and *Subject* for the `fBodyGyroMean.X` sensor attribute.  | Number (Hz) |
|`freqBodyGyroMean.Y` | Average **freq** for each *Activity* and *Subject* for the `fBodyGyroMean.Y` sensor attribute.  | Number (Hz) |
|`freqBodyGyroMean.Z` | Average **freq** for each *Activity* and *Subject* for the `fBodyGyroMean.Z` sensor attribute.  | Number (Hz) |
|`freqBodyGyroStd.X` | Average **freq** for each *Activity* and *Subject* for the `fBodyGyroStd.X` sensor attribute.  | Number (Hz) |
|`freqBodyGyroStd.Y` | Average **freq** for each *Activity* and *Subject* for the `fBodyGyroStd.Y` sensor attribute.  | Number (Hz) |
|`freqBodyGyroStd.Z` | Average **freq** for each *Activity* and *Subject* for the `fBodyGyroStd.Z` sensor attribute.  | Number (Hz) |
|`freqBodyAccMagMean` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccMagMean` sensor attribute.  | Number (Hz) |
|`freqBodyAccMagStd` | Average **freq** for each *Activity* and *Subject* for the `fBodyAccMagStd` sensor attribute.  | Number (Hz) |
|`freqBodyBodyAccJerkMagMean` | Average **freq** for each *Activity* and *Subject* for the `fBodyBodyAccJerkMagMean` sensor attribute.  | Number (Hz) |
|`freqBodyBodyAccJerkMagStd` | Average **freq** for each *Activity* and *Subject* for the `fBodyBodyAccJerkMagStd` sensor attribute.  | Number (Hz) |
|`freqBodyBodyGyroMagMean` | Average **freq** for each *Activity* and *Subject* for the `fBodyBodyGyroMagMean` sensor attribute.  | Number (Hz) |
|`freqBodyBodyGyroMagStd` | Average **freq** for each *Activity* and *Subject* for the `fBodyBodyGyroMagStd` sensor attribute.  | Number (Hz) |
|`freqBodyBodyGyroJerkMagMean` | Average **freq** for each *Activity* and *Subject* for the `fBodyBodyGyroJerkMagMean` sensor attribute.  | Number (Hz) |
|`freqBodyBodyGyroJerkMagStd` | Average **freq** for each *Activity* and *Subject* for the `fBodyBodyGyroJerkMagStd` sensor attribute.  | Number (Hz) |
