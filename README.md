DataCleaning
============

## Running the program 
The data can be found at the following URL [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  "data cleaning zip files")

Before executing the program, the zipped data file must be downloaded and unzipped into a directory. 

Run_analysis.R is then executed from the directory containing the unzipped data file. 

## Structure of Database Files 
The unzipped input files are described as follows:

1. subject_test.txt and subject_train.txt a list of subject id's used to match a subject to a set of observations.
1. test_y.txt and train_x.txt a list of activities that match to the subject and the observations. 
1. test_x.txt and train_x.txt the recorded data for each subject and activity. This data is in the form of 561 recorded data observations. 
1. features.txt a list of 561 observation names used to title the columns for the observation results
1. activity_labels.txt a list of meaningful names of activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). 

The output data record is in the created file tidyData.txt. Further details of the contents of this file can be found in the codebook.md file on this site. 

## Program Details 
Program execution is described in the following steps:

1. For both test and train data, read into temporary variables the x, y, and subject text files as data records.
2. From the features.txt file read in the column names that will be applied to the merged test and train data records.
3. The column names need to be cleaned up as follows:
  1. Change "-" and "," characters into underscores to prevent these characters from causing problems with calculations
  2. In later stages the mean and standard deviation columns will be isolated from the rest of the data. In preparation for that, any columns with either "mean" or "std" anywhere in the column name will have the occurrence eliminated and "MEAN" or "STD" placed at the start of the column name. 
   
  **Please note that as a design element, I select any occurrences in the data of "mean" or "std". This results in 88 columns of data. **

  3. Remove all "()"'s.
  4. Remove all underscores. This is to clean up the extra underscores created earlier and to eliminate trailing underscores which may have come about by the column name manipulations.
  5. Create two new column names - SubjectID and ActivityID which will be used in the merged data. 

4. Combine the X, subject and Y data frames for both the training and test databases into new data frames.
5. Replace the default "Vx" column names with the descriptive versions created above. 
6. Find all occurrences of "std" or "mean" in the column names and create a new dataframe that only contains those columns. 
7. Replace the activity ID numbers with descriptive names gathered from the activity_labels.txt file.
8. Create a narrow data set using the SubjectID and ActivityID columns. This adds two additional columns ("variable" which is all the rest of the columns - the measurement column names and "value" which are the corresponding values).
9. Create a wide data set so that each entry of SubjectID and ActivityID have a row of observations of all the measured variables. The mean of all these observations is taken at this time. 
10. Output the resulting file to "tidyData.txt" in the current working directory. 

## Is the resulting data set a tidy data set? 

	
 From the definition of a tidy data set given by Hadley Wickham, there are three important elements to consider in design:

1.  Each variable forms a column. 
1. 	Each observation forms a row. 
1. 	Each type of observational unit forms a table. (1)

In the resulting data set described above, item 3 is the easiest one to prove since the data by definition is the result of a single form of observation. It is all data collected from a set of same experiments conducted on multiple test subjects - all with the same activity set. 

The command, 

     meltedTable <- melt(stdMeanData, id.vars = c("SubjectID", "ActivityID") )

creates a new data frame which contains all the original data in a narrow format with headers for subject, activity, variable and value. The variable field is all the remaining columns which represents the observations. The value field is the corresponding values of those observations. 

The command, 

	summaryTable <- dcast(meltedTable, SubjectID + ActivityID ~ variable, mean)

creates a wide version of the meltedTable and does an average of the column variables. 

| SubjectID     | ActivityID    | MEAN_tBodyAccX | MEAN_tBodyAccY|
| ------------- |:-------------:| -----:|  --------:|
| 1     | LAYING | 0.2215982 | -0.040513953 |
| 1    | SITTING     |   0.2612376| -0.001308288 |
| 1| STANDING      |    0.2789176 | -0.016137590 |


## References

(1) Wickham, Hadley. *Tidy Data*, Journal of Statistical Software. Volume VV, Issue II