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
Program execution is described in the following steps

## Is the resulting data set a tidy data set? 

	
 From the definition of a tidy data set given by Hadley Wickham, there are three important elements to consider in design:

1.  Each variable forms a column. 
1. 	Each observation forms a row. 
1. 	Each type of observational unit forms a table. (1)

In the resulting data set described above, item 3 is the easiest one to prove since the data by definition is the result of a single form of observation. It is all data collected from a set of same experiments conducted on multiple test subjects - all with the same activity set. 

## References

(1) Wickham, Hadley. *Tidy Data*, Journal of Statistical Software. Volume VV, Issue II