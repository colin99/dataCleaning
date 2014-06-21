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

## MEAN_tBodyAccX, MEAN_tBodyAccY, MEAN_tBodyAccZ  

## STD_tBodyAccY, STD_tBodyAccY, STD_tBodyAccZ 

## MEAN_tGravityAccX, MEAN_tGravityAccY, MEAN_tGravityAccZ 

## STD_tGravityAccX, STD_tGravityAccY, STD_tGravityAccZ 

## MEAN_tBodyAccJerkX, MEAN_tBodyAccJerkY, MEAN_tBodyAccJerkZ 

## STD_tBodyAccJerkX, STD_tBodyAccJerkY, STD_tBodyAccJerkZ 

## MEAN_tBodyGyroX, MEAN_tBodyGyroY, MEAN_tBodyGyroZ
 
## STD_tBodyGyroX, STD_tBodyGyroY, STD_tBodyGyroZ
 
## MEAN_tBodyGyroJerkX, MEAN_tBodyGyroJerkY, MEAN_tBodyGyroJerkZ
 
## STD_tBodyGyroJerkX, STD_tBodyGyroJerkY, STD_tBodyGyroJerkZ 

## MEAN_tBodyAccMag 

## STD_tBodyAccMag 

## MEAN_tGravityAccMag 

## STD_tGravityAccMag 

## MEAN_tBodyAccJerkMag 

## STD_tBodyAccJerkMag 

## MEAN_tBodyGyroMag 

## STD_tBodyGyroMag 

## MEAN_tBodyGyroJerkMag 

## STD_tBodyGyroJerkMag 

## MEAN_fBodyAccX, MEAN_fBodyAccY, MEAN_fBodyAccZ 

## STD_fBodyAccX, STD_fBodyAccY, STD_fBodyAccZ 

## MEAN_fBodyAccFreqX, MEAN_fBodyAccFreqY, MEAN_fBodyAccFreqZ 

## MEAN_fBodyAccJerkX, MEAN_fBodyAccJerkY, MEAN_fBodyAccJerkZ 

## STD_fBodyAccJerkX, STD_fBodyAccJerkY, STD_fBodyAccJerkZ 

## MEAN_fBodyAccJerkFreqX, MEAN_fBodyAccJerkFreqY, MEAN_fBodyAccJerkFreqZ 

## MEAN_fBodyGyroX, MEAN_fBodyGyroY, MEAN_fBodyGyroZ 

## STD_fBodyGyroX, STD_fBodyGyroY, STD_fBodyGyroZ 

## MEAN_fBodyGyroFreqX, MEAN_fBodyGyroFreqY, MEAN_fBodyGyroFreqZ

## MEAN_fBodyAccMag 

## STD_fBodyAccMag 

## MEAN_fBodyAccMagFreq 

## MEAN_fBodyBodyAccJerkMag 

## STD_fBodyBodyAccJerkMag 

## MEAN_fBodyBodyAccJerkMagFreq 

## MEAN_fBodyBodyGyroMag 

## STD_fBodyBodyGyroMag 

## MEAN_fBodyBodyGyroMagFreq 

## MEAN_fBodyBodyGyroJerkMag 

## STD_fBodyBodyGyroJerkMag 

## MEAN_fBodyBodyGyroJerkMagFreq 

## MEAN_angle(tBodyAccgravity) 

## MEAN_angle(tBodyAccJerk)gravity 

## MEAN_angle(tBodyGyrogravity) 

## MEAN_angle(tBodyGyroJerkgravity) 

## MEAN_angle(Xgravity) 

## MEAN_angle(Ygravity) 

## MEAN_angle(Zgravity) 



