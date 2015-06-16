Getting and Cleaning Data Course Project

**Pre-steps:**
=======

 - Install 'dplyr' Package (install.packages("dplyr"))
 - Clone this repo inside "UCI HAR Dataset" data folder

Get data from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
**Purpose:** 
=======

run_analysis.R  does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


How to run Script:
-------

 1.  Source script: 

        source("run_analysis.R")

 2. Run analysis function

        run()

 3. view tidy data set txt in working directory:

        > "tidy_averages.txt"
