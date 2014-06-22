# **Code Book** #

This book will describe the variables used in the tidy data set. For comparison, the original descriptions can be found in the *features_info.txt* file within the "UCI HAR Dataset". The variables used here are a subset of the original features. 

There are a total of 88 variables within this dataset. The first two identify the subject and activity. 

## SubjectID 
This is a numeric value between 1 and 30 which identifies the participant in the experiment. 

## ActivityID 
 A list of various activities used in measuring the variables:
- WALKING
- WALKING_DOWNSTAIRS
- WALKING_UPSTAIRS
- LAYING
- SITTING
- STANDING

The remaining 86 variables represent test data that was collected from a specific *SubjectID* doing a specific *ActivityID*. The data columns selected are all mean or standard deviation columns. For this analysis, any column that contained either "mean" or "std" (case insensitive) anywhere within the name, was included. 

When the variables below are grouped together, it indicates the same measurement has been made but just in a different axis (the axis X, Y or Z is determined by the last character in the variable name. 

All the variables below have been normalized and are unit-free. 

## MEAN_tBodyAccX, MEAN_tBodyAccY, MEAN_tBodyAccZ  
Real Number value of the mean of the time domain tBodyAcc measurement.

## STD_tBodyAccY, STD_tBodyAccY, STD_tBodyAccZ 
Real Number value of the standard deviation of the time domain tBodyAcc measurement.

## MEAN_tGravityAccX, MEAN_tGravityAccY, MEAN_tGravityAccZ 
Real Number value of the mean of the time domain tGravityAcc measurement.

## STD_tGravityAccX, STD_tGravityAccY, STD_tGravityAccZ 
Real Number value of the standard deviation of the time domain tGravityAcc measurement.

## MEAN_tBodyAccJerkX, MEAN_tBodyAccJerkY, MEAN_tBodyAccJerkZ 
Real Number value of the mean of the time domain tBodyAccJerk measurement.

## STD_tBodyAccJerkX, STD_tBodyAccJerkY, STD_tBodyAccJerkZ 
Real Number value of the standard deviation of the time domain tBodyAccJerk measurement.

## MEAN_tBodyGyroX, MEAN_tBodyGyroY, MEAN_tBodyGyroZ
Real Number value of the mean of the time domain tBodyGyro measurement.
 
## STD_tBodyGyroX, STD_tBodyGyroY, STD_tBodyGyroZ
Real Number value of the standard deviation of the time domain tBodyGyro measurement.
 
## MEAN_tBodyGyroJerkX, MEAN_tBodyGyroJerkY, MEAN_tBodyGyroJerkZ
Real Number value of the mean of the time domain tBodyGyroJerk measurement.
 
## STD_tBodyGyroJerkX, STD_tBodyGyroJerkY, STD_tBodyGyroJerkZ 
Real Number value of the standard deviation of the time domain tBodyGyroJerk measurement.

## MEAN_tBodyAccMag 
Real Number value of the mean of the time domain tBodyAccMag measurement.

## STD_tBodyAccMag 
Real Number value of the standard deviation of the time domain tBodyAccMag measurement.

## MEAN_tGravityAccMag 
Real Number value of the mean of the time domain tGravityAccMag measurement.

## STD_tGravityAccMag 
Real Number value of the standard deviation of the time domain tGravityAccMag measurement.

## MEAN_tBodyAccJerkMag 
Real Number value of the mean of the time domain tBodyAccJerkMag measurement.

## STD_tBodyAccJerkMag 
Real Number value of the standard deviation of the time domain tBodyAccJerkMag measurement.

## MEAN_tBodyGyroMag 
Real Number value of the mean of the time domain tBodyGyroMag measurement.

## STD_tBodyGyroMag 
Real Number value of the standard deviation of the time domain tBodyGyroMag measurement.

## MEAN_tBodyGyroJerkMag 
Real Number value of the mean of the time domain tBodyGyroJerkMag measurement.

## STD_tBodyGyroJerkMag 
Real Number value of the standard deviation of the time domain tBodyGyroJerkMag measurement.

## MEAN_fBodyAccX, MEAN_fBodyAccY, MEAN_fBodyAccZ 
Real Number value of the mean of the frequency domain fBodyAcc measurement.

## STD_fBodyAccX, STD_fBodyAccY, STD_fBodyAccZ 
Real Number value of the standard deviation of the frequency domain fBodyAcc measurement.

## MEAN_fBodyAccFreqX, MEAN_fBodyAccFreqY, MEAN_fBodyAccFreqZ 
Real Number value of the mean of the frequency domain fBodyAccFreq measurement.

## MEAN_fBodyAccJerkX, MEAN_fBodyAccJerkY, MEAN_fBodyAccJerkZ 
Real Number value of the mean of the frequency domain fBodyAccJerk measurement.

## STD_fBodyAccJerkX, STD_fBodyAccJerkY, STD_fBodyAccJerkZ 
Real Number value of the standard deviation of the frequency domain fBodyAccJerk measurement.

## MEAN_fBodyAccJerkFreqX, MEAN_fBodyAccJerkFreqY, MEAN_fBodyAccJerkFreqZ 
Real Number value of the mean of the frequency domain fBodyAccJerkFreq measurement.

## MEAN_fBodyGyroX, MEAN_fBodyGyroY, MEAN_fBodyGyroZ 
Real Number value of the mean of the frequency domain fBodyGyro measurement.

## STD_fBodyGyroX, STD_fBodyGyroY, STD_fBodyGyroZ 
Real Number value of the standard deviation of the frequency domain fBodyGyro measurement.

## MEAN_fBodyGyroFreqX, MEAN_fBodyGyroFreqY, MEAN_fBodyGyroFreqZ
Real Number value of the mean of the frequency domain fBodyGyroFreq measurement.

## MEAN_fBodyAccMag 
Real Number value of the mean of the frequency domain fBodyAccMag measurement.

## STD_fBodyAccMag 
Real Number value of the standard deviation of the frequency domain fBodyAccMag measurement.

## MEAN_fBodyAccMagFreq 
Real Number value of the mean of the frequency domain fBodyAccMagFreq measurement.

## MEAN_fBodyBodyAccJerkMag 
Real Number value of the mean of the frequency domain fBodyBodyAccJerkMag measurement.

## STD_fBodyBodyAccJerkMag 
Real Number value of the standard deviation of the frequency domain fBodyBodyAccJerkMag measurement.

## MEAN_fBodyBodyAccJerkMagFreq 
Real Number value of the mean of the frequency domain fBodyBodyAccJerkMagFreq measurement.

## MEAN_fBodyBodyGyroMag 
Real Number value of the mean of the frequency domain fBodyBodyGyroMag measurement.

## STD_fBodyBodyGyroMag 
Real Number value of the standard deviation of the frequency domain fBodyBodyGyroMag measurement.

## MEAN_fBodyBodyGyroMagFreq 
Real Number value of the mean of the frequency domain fBodyBodyGyroJerkMag measurement.

## MEAN_fBodyBodyGyroJerkMag 
Real Number value of the mean of the frequency domain fBodyBodyGyroJerkMag measurement.

## STD_fBodyBodyGyroJerkMag 
Real Number value of the standard deviation of the frequency domain fBodyBodyGyroJerkMag measurement.

## MEAN_fBodyBodyGyroJerkMagFreq 
Real Number value of the mean of the frequency domain tBodyBodyGyroJerkMagFreq measurement.

## MEAN_angle(tBodyAccgravity) 
Real Number value of the mean of the time domain angle(tBodyAccgravity) measurement.

## MEAN_angle(tBodyAccJerk)gravity 
Real Number value of the mean of the time domain angle(tBodyAccJerk) measurement.

## MEAN_angle(tBodyGyrogravity) 
Real Number value of the mean of the time domain angle(tBodyGyrogravity) measurement.

## MEAN_angle(tBodyGyroJerkgravity) 
Real Number value of the mean of the time domain angle(tBodyGyroJerkgravity) measurement. 

## MEAN_angle(Xgravity) 
Real Number value of the mean of the angle(gravity) variable in the X axis.

## MEAN_angle(Ygravity) 
Real Number value of the mean of the angle(gravity) variable in the Y axis.

## MEAN_angle(Zgravity) 
Real Number value of the mean of the angle(gravity) variable in the Z axis. 



