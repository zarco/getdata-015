Code Book:
----------

## Source dataset

Human Activity Recognition Using Smartphones Data Set 

[Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

 - A 561-feature vector with time and frequency domain variables. 
 - Its activity label. 
 - An identifier of the subject who carried out the experiment.
 
*For more information regarding the source datasets refer to the README.txt file inside the zip

## Data transformations

1. Read x_test.txt and x_train.txt from the raw dataset and then combine them into a single data frame 'x'
2. Read y_test.txt and y_train.txt from the raw dataset and then combine them into a single data frame 'y'
3. Read subject_test.txt and subject_train.txt from the raw dataset and then combine them into a single data frame 'subject'
4. Read features.txt and use it as names of 'x' data frame
5. Filter 'x' to get only columns with 'mean' or 'std' word in its name
6. Read activity_labels.txt and join it with 'y' to get descriptive activity names for each observation, then combine them into 'x'
7. Combine 'subject' into 'x'
8. Group 'x' by Subject and Activity
9. Summarise each group (Subject+Activity) to get the mean of each measurement

## Dataset produced

- **tidy_averages** means(averages) for each subject(30) and activity(6) for a total of 180 observations

## Data Dictionary

"Subject" 
    Integer. Identifies the subject who performed the activity for each window sample. Values: 1 to 30.  								

"Activity"                                
	Factor. Identifies activity performed for sample. 6 possible values.
	1. WALKING
	2. WALKING_UPSTAIRS
	3. WALKING_DOWNSTAIRS
	4. SITTING
	5. STANDING
	6. LAYING
  
"tBodyAcc-mean()-X"              
	Double. Represents the mean value of "tBodyAcc-mean()-X" measurement reading for the subject+activity.

"tBodyAcc-mean()-Y"               
	Double. Represents the mean value of "tBodyAcc-mean()-Y" measurement reading for the subject+activity.

"tBodyAcc-mean()-Z"               
	Double. Represents the mean value of "tBodyAcc-mean()-Z" measurement reading for the subject+activity.

"tBodyAcc-std()-X"               
	Double. Represents the mean value of "tBodyAcc-std()-X" measurement reading for the subject+activity.

"tBodyAcc-std()-Y"                
	Double. Represents the mean value of "tBodyAcc-std()-Y" measurement reading for the subject+activity.

"tBodyAcc-std()-Z"                
	Double. Represents the mean value of "tBodyAcc-std()-Z" measurement reading for the subject+activity.

"tGravityAcc-mean()-X"           
	Double. Represents the mean value of "tGravityAcc-mean()-X" measurement reading for the subject+activity.

"tGravityAcc-mean()-Y"            
	Double. Represents the mean value of "tGravityAcc-mean()-Y" measurement reading for the subject+activity.

"tGravityAcc-mean()-Z"            
	Double. Represents the mean value of "tGravityAcc-mean()-Z" measurement reading for the subject+activity.

"tGravityAcc-std()-X"            
	Double. Represents the mean value of "tGravityAcc-std()-X" measurement reading for the subject+activity.

"tGravityAcc-std()-Y"             
	Double. Represents the mean value of "tGravityAcc-std()-Y" measurement reading for the subject+activity.

"tGravityAcc-std()-Z"             
	Double. Represents the mean value of "tGravityAcc-std()-Z" measurement reading for the subject+activity.

"tBodyAccJerk-mean()-X"          
	Double. Represents the mean value of "tBodyAccJerk-mean()-X" measurement reading for the 
	subject+activity.

"tBodyAccJerk-mean()-Y"           
	Double. Represents the mean value of "tBodyAccJerk-mean()-Y" measurement reading for the subject+activity.

"tBodyAccJerk-mean()-Z"           
	Double. Represents the mean value of "tBodyAccJerk-mean()-Z" measurement reading for the subject+activity.

"tBodyAccJerk-std()-X"           
	Double. Represents the mean value of "tBodyAccJerk-std()-X" measurement reading for the subject+activity.

"tBodyAccJerk-std()-Y"            
	Double. Represents the mean value of "tBodyAccJerk-std()-Y" measurement reading for the subject+activity.

"tBodyAccJerk-std()-Z"            
	Double. Represents the mean value of "tBodyAccJerk-std()-Z" measurement reading for the subject+activity.

"tBodyGyro-mean()-X"             
	Double. Represents the mean value of "tBodyGyro-mean()-X" measurement reading for the subject+activity.

"tBodyGyro-mean()-Y"              
	Double. Represents the mean value of "tBodyGyro-mean()-Y" measurement reading for the subject+activity.

"tBodyGyro-mean()-Z"              
	Double. Represents the mean value of "tBodyGyro-mean()-Z" measurement reading for the subject+activity.

"tBodyGyro-std()-X"              
	Double. Represents the mean value of "tBodyGyro-std()-X" measurement reading for the subject+activity.

"tBodyGyro-std()-Y"               
	Double. Represents the mean value of "tBodyGyro-std()-Y" measurement reading for the subject+activity.

"tBodyGyro-std()-Z"               
	Double. Represents the mean value of "tBodyGyro-std()-Z" measurement reading for the subject+activity.

"tBodyGyroJerk-mean()-X"         
	Double. Represents the mean value of "tBodyGyroJerk-mean()-X" measurement reading for the subject+activity.

"tBodyGyroJerk-mean()-Y"          
	Double. Represents the mean value of "tBodyGyroJerk-mean()-Y" measurement reading for the subject+activity.

"tBodyGyroJerk-mean()-Z"          
	Double. Represents the mean value of "tBodyGyroJerk-mean()-Z" measurement reading for the subject+activity.

"tBodyGyroJerk-std()-X"          
	Double. Represents the mean value of "tBodyGyroJerk-std()-X" measurement reading for the subject+activity.

"tBodyGyroJerk-std()-Y"           
	Double. Represents the mean value of "tBodyGyroJerk-std()-Y" measurement reading for the subject+activity.

"tBodyGyroJerk-std()-Z"           
	Double. Represents the mean value of "tBodyGyroJerk-std()-Z" measurement reading for the subject+activity.

"tBodyAccMag-mean()"             
	Double. Represents the mean value of "tBodyAccMag-mean" measurement reading for the subject+activity.

"tBodyAccMag-std()"               
	Double. Represents the mean value of "tBodyAccMag-std" measurement reading for the subject+activity.

"tGravityAccMag-mean()"           
	Double. Represents the mean value of "tGravityAccMag-mean" measurement reading for the subject+activity.

"tGravityAccMag-std()"           
	Double. Represents the mean value of "tGravityAccMag-std" measurement reading for the subject+activity.

"tBodyAccJerkMag-mean()"          
	Double. Represents the mean value of "tBodyAccJerkMag-mean" measurement reading for the subject+activity.

"tBodyAccJerkMag-std()"           
	Double. Represents the mean value of "tBodyAccJerkMag-std" measurement reading for the subject+activity.

"tBodyGyroMag-mean()"            
	Double. Represents the mean value of "tBodyGyroMag-mean" measurement reading for the subject+activity.

"tBodyGyroMag-std()"              
	Double. Represents the mean value of "tBodyGyroMag-std" measurement reading for the subject+activity.

"tBodyGyroJerkMag-mean()"         
	Double. Represents the mean value of "tBodyGyroJerkMag-mean" measurement reading for the subject+activity.

"tBodyGyroJerkMag-std()"         
	Double. Represents the mean value of "tBodyGyroJerkMag-std" measurement reading for the subject+activity.

"fBodyAcc-mean()-X"               
	Double. Represents the mean value of "fBodyAcc-mean()-X" measurement reading for the subject+activity.

"fBodyAcc-mean()-Y"               
	Double. Represents the mean value of "fBodyAcc-mean()-Y" measurement reading for the subject+activity.

"fBodyAcc-mean()-Z"              
	Double. Represents the mean value of "fBodyAcc-mean()-Y" measurement reading for the subject+activity.

"fBodyAcc-std()-X"                
	Double. Represents the mean value of "fBodyAcc-std()-X" measurement reading for the subject+activity.

"fBodyAcc-std()-Y"                
	Double. Represents the mean value of "fBodyAcc-std()-Y" measurement reading for the subject+activity.

"fBodyAcc-std()-Z"               
	Double. Represents the mean value of "fBodyAcc-std()-Z" measurement reading for the subject+activity.

"fBodyAcc-meanFreq()-X"           
	Double. Represents the mean value of "fBodyAcc-meanFreq()-X" measurement reading for the subject+activity.

"fBodyAcc-meanFreq()-Y"           
	Double. Represents the mean value of "fBodyAcc-meanFreq()-Y" measurement reading for the subject+activity.

"fBodyAcc-meanFreq()-Z"          
	Double. Represents the mean value of "fBodyAcc-meanFreq()-Z" measurement reading for the subject+activity.

"fBodyAccJerk-mean()-X"           
	Double. Represents the mean value of "fBodyAccJerk-mean()-X" measurement reading for the subject+activity.

"fBodyAccJerk-mean()-Y"           
	Double. Represents the mean value of "fBodyAccJerk-mean()-Y" measurement reading for the subject+activity.

"fBodyAccJerk-mean()-Z"          
	Double. Represents the mean value of "fBodyAccJerk-mean()-Z" measurement reading for the subject+activity.

"fBodyAccJerk-std()-X"            
	Double. Represents the mean value of "" measurement reading for the subject+activity.

"fBodyAccJerk-std()-Y"            
	Double. Represents the mean value of "" measurement reading for the subject+activity.

"fBodyAccJerk-std()-Z"           
	Double. Represents the mean value of "fBodyAccJerk-std()-Z" measurement reading for the subject+activity.

"fBodyAccJerk-meanFreq()-X"       
	Double. Represents the mean value of "fBodyAccJerk-meanFreq()-X" measurement reading for the subject+activity.

"fBodyAccJerk-meanFreq()-Y"       
	Double. Represents the mean value of "fBodyAccJerk-meanFreq()-Y" measurement reading for the subject+activity.

"fBodyAccJerk-meanFreq()-Z"      
	Double. Represents the mean value of "fBodyAccJerk-meanFreq()-Z" measurement reading for the subject+activity.

"fBodyGyro-mean()-X"              
	Double. Represents the mean value of "fBodyGyro-mean()-X" measurement reading for the subject+activity.

"fBodyGyro-mean()-Y"              
	Double. Represents the mean value of "fBodyGyro-mean()-Y" measurement reading for the subject+activity.

"fBodyGyro-mean()-Z"             
	Double. Represents the mean value of "fBodyGyro-mean()-Z" measurement reading for the subject+activity.

"fBodyGyro-std()-X"               
	Double. Represents the mean value of "fBodyGyro-std()-X" measurement reading for the subject+activity.

"fBodyGyro-std()-Y"               
	Double. Represents the mean value of "fBodyGyro-std()-Y" measurement reading for the subject+activity.

"fBodyGyro-std()-Z"              
	Double. Represents the mean value of "fBodyGyro-std()-Z" measurement reading for the subject+activity.

"fBodyGyro-meanFreq()-X"          
	Double. Represents the mean value of "fBodyGyro-meanFreq()-X" measurement reading for the subject+activity.

"fBodyGyro-meanFreq()-Y"          
	Double. Represents the mean value of "fBodyGyro-meanFreq()-Y" measurement reading for the 
	subject+activity.

"fBodyGyro-meanFreq()-Z"         
	Double. Represents the mean value of "fBodyGyro-meanFreq()-Z" measurement reading for the subject+activity.

"fBodyAccMag-mean()"              
	Double. Represents the mean value of "fBodyAccMag-mean" measurement reading for the subject+activity.

"fBodyAccMag-std()"               
	Double. Represents the mean value of "fBodyAccMag-std" measurement reading for the subject+activity.

"fBodyAccMag-meanFreq()"         
	Double. Represents the mean value of "fBodyAccMag-meanFreq" measurement reading for the subject+activity.

"fBodyBodyAccJerkMag-mean()"      
	Double. Represents the mean value of "fBodyBodyAccJerkMag-mean" measurement reading for the subject+activity.

"fBodyBodyAccJerkMag-std()"       
	Double. Represents the mean value of "fBodyBodyAccJerkMag-std" measurement reading for the subject+activity.

"fBodyBodyAccJerkMag-meanFreq()" 
	Double. Represents the mean value of "fBodyBodyAccJerkMag-meanFreq" measurement reading for the subject+activity.

"fBodyBodyGyroMag-mean()"         
	Double. Represents the mean value of "fBodyBodyGyroMag-mean" measurement reading for the subject+activity.

"fBodyBodyGyroMag-std()"          
	Double. Represents the mean value of "fBodyBodyGyroMag-std" measurement reading for the subject+activity.

"fBodyBodyGyroMag-meanFreq()"    
	Double. Represents the mean value of "fBodyBodyGyroMag-meanFreq" measurement reading for the subject+activity.

"fBodyBodyGyroJerkMag-mean()"     
	Double. Represents the mean value of "fBodyBodyGyroJerkMag-mean" measurement reading for the subject+activity.

"fBodyBodyGyroJerkMag-std()"      
	Double. Represents the mean value of "fBodyBodyGyroJerkMag-std()" measurement reading for the subject+activity.

"fBodyBodyGyroJerkMag-meanFreq()"
	Double. Represents the mean value of "fBodyBodyGyroJerkMag-meanFreq" measurement reading for the subject+activity.