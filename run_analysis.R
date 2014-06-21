## run_analysis.R
## This file assumes the "UCI HAR Dataset" has been downloaded and extracted
## to the current working directory. 
## Purpose: Summarize mean and standard deviation data and create 
##          a tidy data set. 

## Read in all data tables and a list of column names. 

myTestX <- read.table("UCI HAR Dataset/test/X_test.txt",comment.char="",colClasses="numeric")
myTestY <- read.table("UCI HAR Dataset/test/y_test.txt",comment.char="",colClasses="numeric")
myTestSubject <- read.table("UCI HAR Dataset/test/subject_test.txt",comment.char="",colClasses="numeric")
myTrainX <- read.table("UCI HAR Dataset/train/X_train.txt",comment.char="",colClasses="numeric")
myTrainY <- read.table("UCI HAR Dataset/train/y_train.txt",comment.char="",colClasses="numeric")
myTrainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt",comment.char="",colClasses="numeric")

column_names <- read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)

## Setting up the column names
## 1) Change dashes and commas to underscores to remove characters that may
##     cause problems with future calculations. 
## 2) For consistency, put the type of column at the start of the
##     character sequence and eliminate it within the column name (only if
##     "std" or "mean" appear in the column name). 
## 3) Remove ()'s. 
## 4) Remove all underscores that may have been created earlier. 
## 5) Create two new rows that reflect the Subject ID and Activity ID column names.
##     These will be using when renaming the columns in the data frames.


for (i in 1:nrow(column_names)) {
  column_names[i,2]<-gsub("-","_",column_names[i,2])
  column_names[i,2]<-gsub(",","_",column_names[i,2])
  column_names[i,2] <- gsub("()","", column_names[i,2],fixed=TRUE)
  column_names[i,2] <- gsub("(_+)","", column_names[i,2])
  if(grepl("mean",column_names[i,2],ignore.case=TRUE)==1) {
    column_names[i,2] <- gsub("mean","",column_names[i,2],ignore.case=TRUE)
    column_names[i,2] <- paste("MEAN_",column_names[i,2],sep="")
  }
  else
  if(grepl("std", column_names[i,2],ignore.case=TRUE)==1) {
    column_names[i,2] <- gsub("std","",column_names[i,2],ignore.case=TRUE)
    column_names[i,2] <- paste("STD_",column_names[i,2],sep="")
  }
}
column_names[nrow(column_names)+1,2] <- "SubjectID"
column_names[nrow(column_names)+1,2] <- "ActivityID"

## Create two new data frames by combining all the "test" and "training" data frames
testDataFrame <- cbind(myTestX,myTestSubject,myTestY)
trainDataFrame <- cbind(myTrainX,myTrainSubject,myTrainY)

## Add appropriate column names as generated above in place of the default "Vx" names.

names(testDataFrame)<-column_names[,2]
names(trainDataFrame) <- column_names[,2]

# Merge the test and training data into one large data frame. 

completeDataFrame <- rbind(testDataFrame,trainDataFrame)

# Create a set of column names containing either "mean" or "std" for further analysis.
# Also, the SubjectID and ActivityID columns are required so those are manually added to the list.
# Once the list is created, it is used to select columns from completeDataFrame
# and store them in stdMeanData data frame. 

desiredColumns <- grep("std|mean",colnames(completeDataFrame),value=TRUE,ignore.case = TRUE)
desiredColumns[length(desiredColumns)+1] <- "SubjectID"
desiredColumns[length(desiredColumns)+1] <- "ActivityID"

stdMeanData <- completeDataFrame[,desiredColumns]

# The activities are still in a numeric format so the file containing the labels
# is stored in a table, then each row in the stdMeanData table is parsed and 
# the appropriate activity name is stored in the list (replacing the activity number).

activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)
stdMeanData[,"ActivityID"]<-activityLabels[stdMeanData[,"ActivityID"],2]

# The last steps are to create the new summary table. 
# First, the original data is melted into a narrow format with the following headers:
#   1) SubjectID - numeric attribute identifying the subject. 
#   2) ActivityID - character string identifying the activity. 
#   3) variable - the name of the measurement (either a mean or std)
#   4) value - the corresponding value of the variable. 
#
# Next the data is restructured in a wide data format. Each instance of 
# subject and activity forms a row with the data being the mean of each 
# specific experment (the columns reflect the data collected).
# The generated output is then written to disk as "tidyData.txt".

meltedTable <- melt(stdMeanData, id.vars = c("SubjectID", "ActivityID") )
summaryTable <- dcast(meltedTable, SubjectID + ActivityID ~ variable, mean)

write.table(summaryTable, file="tidyData.txt")

