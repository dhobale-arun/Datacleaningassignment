CODEBOOK - Getting and Cleaning Data Course Project

Original Data

The original data is from an experiment with a group of 30 volunteers wearing a smartphone (Samsung Galaxy S II) on the waist. The collected data is from the accelerometers from this smartphone and can be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The full description can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Process

1.The original data was merged to create one big data set in the following way:

features.txt	"Activity_ID"	"Subject_ID"
X_train.txt	y_train.txt	subject_train.txt
X_test.txt	y_test.txt	subject_train.txt

2.From this dataset was extract only the columns of mean and standard deviation and the "Activity_ID" and "Subject_ID" columns.

3.The column "Activity_ID", that has the integers that represents each type of activity, was replaced with the "Activity" columns, that has the names of each activity followin the map below:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

4.The original variables names, such as tBodyAccMag-mean(), were replaced with better descriptive names, such as TimeBodyAccelerationMagnitudeMean.

5.An independent tidy data set was created with the mean of each activity and each subject. This new dataset was saved in the tidy_data.txt file.

Variables

There are 180 observations of 68 variables, where the Activity variable is a factor, the Subject_ID is an integer and the other variables are numbers.

Activity: The activity performed for each subject. One of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
Subject_ID: The subject identifier. From 1 to 30.
TimeBodyAccelerationMean-X: The mean of tBodyAcc-mean()-X for each combination of Activity and Subject
TimeBodyAccelerationMean-Y: The mean of tBodyAcc-mean()-Y for each combination of Activity and Subject
TimeBodyAccelerationMean-Z: The mean of tBodyAcc-mean()-Z for each combination of Activity and Subject
TimeBodyAccelerationStdDev-X: The mean of tBodyAcc-std()-X for each combination of Activity and Subject
TimeBodyAccelerationStdDev-Y: The mean of tBodyAcc-std()-Y for each combination of Activity and Subject
TimeBodyAccelerationStdDev-Z: The mean of tBodyAcc-std()-Z for each combination of Activity and Subject
TimeGravityAccelerationMean-X: The mean of tGravityAcc-mean()-X for each combination of Activity and Subject
TimeGravityAccelerationMean-Y: The mean of tGravityAcc-mean()-Y for each combination of Activity and Subject
TimeGravityAccelerationMean-Z: The mean of tGravityAcc-mean()-Z for each combination of Activity and Subject
TimeGravityAccelerationStdDev-X: The mean of tGravityAcc-std()-X for each combination of Activity and Subject
TimeGravityAccelerationStdDev-Y: The mean of tGravityAcc-std()-Y for each combination of Activity and Subject
TimeGravityAccelerationStdDev-Z: The mean of tGravityAcc-std()-Z for each combination of Activity and Subject
TimeBodyAccelerationJerkMean-X: The mean of tBodyAccJerk-mean()-X for each combination of Activity and Subject
TimeBodyAccelerationJerkMean-Y: The mean of tBodyAccJerk-mean()-Y for each combination of Activity and Subject
TimeBodyAccelerationJerkMean-Z: The mean of tBodyAccJerk-mean()-Z for each combination of Activity and Subject
TimeBodyAccelerationJerkStdDev-X: The mean of tBodyAccJerk-std()-X for each combination of Activity and Subject
TimeBodyAccelerationJerkStdDev-Y: The mean of tBodyAccJerk-std()-Y for each combination of Activity and Subject
TimeBodyAccelerationJerkStdDev-Z: The mean of tBodyAccJerk-std()-Z for each combination of Activity and Subject
TimeBodyGyroscopeMean-X: The mean of tBodyGyro-mean()-X for each combination of Activity and Subject
TimeBodyGyroscopeMean-Y: The mean of tBodyGyro-mean()-Y for each combination of Activity and Subject
TimeBodyGyroscopeMean-Z: The mean of tBodyGyro-mean()-Z for each combination of Activity and Subject
TimeBodyGyroscopeStdDev-X: The mean of tBodyGyro-std()-X for each combination of Activity and Subject
TimeBodyGyroscopeStdDev-Y: The mean of tBodyGyro-std()-Y for each combination of Activity and Subject
TimeBodyGyroscopeStdDev-Z: The mean of tBodyGyro-std()-Z for each combination of Activity and Subject
TimeBodyGyroscopeJerkMean-X: The mean of tBodyGyroJerk-mean()-X for each combination of Activity and Subject
TimeBodyGyroscopeJerkMean-Y: The mean of tBodyGyroJerk-mean()-Y for each combination of Activity and Subject
TimeBodyGyroscopeJerkMean-Z: The mean of tBodyGyroJerk-mean()-Z for each combination of Activity and Subject
TimeBodyGyroscopeJerkStdDev-X: The mean of tBodyGyroJerk-std()-X for each combination of Activity and Subject
TimeBodyGyroscopeJerkStdDev-Y: The mean of tBodyGyroJerk-std()-Y for each combination of Activity and Subject
TimeBodyGyroscopeJerkStdDev-Z: The mean of tBodyGyroJerk-std()-Z for each combination of Activity and Subject
TimeBodyAccelerationMagnitudeMean: The mean of tBodyAccMag-mean() for each combination of Activity and Subject
TimeBodyAccelerationMagnitudeStdDev: The mean of tBodyAccMag-std() for each combination of Activity and Subject
TimeGravityAccelerationMagnitudeMean: The mean of tGravityAccMag-mean() for each combination of Activity and Subject
TimeGravityAccelerationMagnitudeStdDev: The mean of tGravityAccMag-std() for each combination of Activity and Subject
TimeBodyAccelerationJerkMagnitudeMean: The mean of tBodyAccJerkMag-mean() for each combination of Activity and Subject
TimeBodyAccelerationJerkMagnitudeStdDev: The mean of tBodyAccJerkMag-std() for each combination of Activity and Subject
TimeBodyGyroscopeMagnitudeMean: The mean of tBodyGyroMag-mean() for each combination of Activity and Subject
TimeBodyGyroscopeMagnitudeStdDev: The mean of tBodyGyroMag-std() for each combination of Activity and Subject
TimeBodyGyroscopeJerkMagnitudeMean: The mean of tBodyGyroJerkMag-mean() for each combination of Activity and Subject
TimeBodyGyroscopeJerkMagnitudeStdDev: The mean of tBodyGyroJerkMag-std() for each combination of Activity and Subject
FrequenceBodyAccelerationMean-X: The mean of fBodyAcc-mean()-X for each combination of Activity and Subject
FrequenceBodyAccelerationMean-Y: The mean of fBodyAcc-mean()-Y for each combination of Activity and Subject
FrequenceBodyAccelerationMean-Z: The mean of fBodyAcc-mean()-Z for each combination of Activity and Subject
FrequenceBodyAccelerationStdDev-X: The mean of fBodyAcc-std()-X for each combination of Activity and Subject
FrequenceBodyAccelerationStdDev-Y: The mean of fBodyAcc-std()-Y for each combination of Activity and Subject
FrequenceBodyAccelerationStdDev-Z: The mean of fBodyAcc-std()-Z for each combination of Activity and Subject
FrequenceBodyAccelerationJerkMean-X: The mean of fBodyAccJerk-mean()-X for each combination of Activity and Subject
FrequenceBodyAccelerationJerkMean-Y: The mean of fBodyAccJerk-mean()-Y for each combination of Activity and Subject
FrequenceBodyAccelerationJerkMean-Z: The mean of fBodyAccJerk-mean()-Z for each combination of Activity and Subject
FrequenceBodyAccelerationJerkStdDev-X: The mean of fBodyAccJerk-std()-X for each combination of Activity and Subject
FrequenceBodyAccelerationJerkStdDev-Y: The mean of fBodyAccJerk-std()-Y for each combination of Activity and Subject
FrequenceBodyAccelerationJerkStdDev-Z: The mean of fBodyAccJerk-std()-Z for each combination of Activity and Subject
FrequenceBodyGyroscopeMean-X: The mean of fBodyGyro-mean()-X for each combination of Activity and Subject
FrequenceBodyGyroscopeMean-Y: The mean of fBodyGyro-mean()-Y for each combination of Activity and Subject
FrequenceBodyGyroscopeMean-Z: The mean of fBodyGyro-mean()-Z for each combination of Activity and Subject
FrequenceBodyGyroscopeStdDev-X: The mean of fBodyGyro-std()-X for each combination of Activity and Subject
FrequenceBodyGyroscopeStdDev-Y: The mean of fBodyGyro-std()-Y for each combination of Activity and Subject
FrequenceBodyGyroscopeStdDev-Z: The mean of fBodyGyro-std()-Z for each combination of Activity and Subject
FrequenceBodyAccelerationMagnitudeMean: The mean of fBodyAccMag-mean() for each combination of Activity and Subject
FrequenceBodyAccelerationMagnitudeStdDev: The mean of fBodyAccMag-std() for each combination of Activity and Subject
FrequenceBodyAccelerationJerkMagnitudeMean: The mean of fBodyBodyAccJerkMag-mean() for each combination of Activity and Subject
FrequenceBodyAccelerationJerkMagnitudeStdDev: The mean of fBodyBodyAccJerkMag-std() for each combination of Activity and Subject
FrequenceBodyGyroscopeMagnitudeMean: The mean of fBodyBodyGyroMag-mean() for each combination of Activity and Subject
FrequenceBodyGyroscopeMagnitudeStdDev: The mean of fBodyBodyGyroMag-std() for each combination of Activity and Subject
FrequenceBodyGyroscopeJerkMagnitudeMean: The mean of fBodyBodyGyroJerkMag-mean() for each combination of Activity and Subject
FrequenceBodyGyroscopeJerkMagnitudeStdDev: The mean of fBodyBodyGyroJerkMag-std() for each combination of Activity and Subject


