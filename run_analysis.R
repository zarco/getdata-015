run <- function(){
  library(dplyr)
  x_test <- read.table("../test/X_test.txt", header = F)
  x_train <- read.table("../train/X_train.txt", header = F)
  subject_test <- read.table("../test/subject_test.txt")
  subject_train <- read.table("../train/subject_train.txt")
  features <- read.table("../features.txt")
  
  y_test <- read.table("../test//y_test.txt")
  y_train <- read.table("../train//y_train.txt")
  activity_labels <- read.table("../activity_labels.txt")
  
  
  
  # step1 - Merges the training and the test sets to create one data set  
  x <- rbind(x_test, x_train)
  y <- rbind(y_test, y_train)
  subject <- rbind(subject_test, subject_train)
  
  # step2 - Extracts only the measurements on the mean and standard deviation for each measurement.  
  names(x) <- features$V2
  x <- x[,features[grep("mean|std", features$V2),1]]
  
  # step3 - Uses descriptive activity names to name the activities in the data set
  y <- left_join(y, activity_labels)
  x <- cbind(x, Activity = y$V2)
  
  # step4 - Appropriately labels the data set with descriptive variable names. 
  x <- cbind(x, Subject = subject$V1)
  
  # step5 - From the data set in step 4, creates a second, independent 
  # tidy data set with the average of each variable for each activity and each subject.
  tidy <- group_by(x, Subject, Activity)
  tidy <- summarise_each(tidy, funs(mean))
  write.table(tidy, "tidy_averages.txt", row.name=FALSE)
}