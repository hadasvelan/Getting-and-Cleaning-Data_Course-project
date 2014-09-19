# Getting and Cleaning Data - Course Project
# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
      # average of each variable for each activity and each subject.


# loading packages
library(reshape2)


setwd("/media/hadas/OS/Documents and Settings/user/Google Drive/OnlineCourses/R_Data_Science_Specialization/03_Getting_and_cleaning_data/Programming_Assignments/CourseProject")

#-----
# downloading and unzipping the file
if(!file.exists("./data")) {
      #creating a temp directory for the zip file
      temp <- tempfile()
      # downloading the zip file
      file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      download.file(file_url, destfile = temp , method = "wget")
      # unziping the file
      unzip(temp)
      unlink(temp)
      # checking the folder name
      zip_filename <- dir()[file.info(dir())$isdir]
      #renaming the new folder to data
      file.rename(zip_filename, "data")
}
# lists the files in the zip folder
list.dirs(path = "./data")

#--------
# 1. Merges the training and the test sets to create one data set.

#-----
## reading and recoding the feature lables
# reading the txt files
feature_labels <- read.table("./data/features.txt", sep = "", header = FALSE)
dim(feature_labels)

## transforming names to names human readable
# transforming to lower case
feature_labels$V2 <- tolower(feature_labels$V2)

#replacing all pnctuations with a dot
feature_labels$V2 <- gsub("[[:punct:]+]", ".", feature_labels$V2)

#deleting all spaces
feature_labels$V2 <- gsub("\\s+", "", feature_labels$V2, perl=TRUE)

# deleting 2 dots 
feature_labels$V2 <- gsub("[•.,]{2}", "", feature_labels$V2, perl = TRUE)

#deleting dots at the end
feature_labels$V2 <- gsub("\\.$", "", feature_labels$V2, perl = TRUE)


#---- 
## reading train files
# reading train data
train_df <- read.table("./data/train/X_train.txt", sep = "", header = FALSE, col.names = feature_labels$V2)

# reading train subjects
train_subjects <- read.table("./data/train/subject_train.txt", sep = "", 
                             header = FALSE, col.names = "subject")

# reading train labels
train_labels <- read.table("./data/train/y_train.txt", sep = "", 
                           header = FALSE, col.names = "activity_label")


# merging the train data with the subjects
train_data <- cbind(train_subjects, train_labels, train_df)

# adding a new variable - group 
train_data$group <- "train"

#---- 
## reading test data

test_df <- read.table("./data/test/X_test.txt", sep = "", header = FALSE, 
                      col.names = feature_labels$V2)

# reading test subjsts
test_subjects <- read.table("./data/test/subject_test.txt", sep = "", header = FALSE, 
                            col.names = "subject")

# reading test labels
test_labels <- read.table("./data/test/y_test.txt", sep = "", header = FALSE,
                          col.names = "activity_label")


# mearging the test files
test_data <- cbind(test_subjects, test_labels, test_df)

# adding a new variable - group 
test_data$group <- "test"


#-----
## combining the train and test datasets
data_temp <- rbind(train_data,test_data)


#----- 
## reading the activity label
activity_labels <- read.table("./data/activity_labels.txt", sep = "", header = FALSE,
                              col.names = c("activity_label", "activity"))


#---
## adding activity label to the dataset
data <- merge(activity_labels, data_temp, by = "activity_label")


#----
#  Extracts only the measurements on the mean and standard deviation for each measurement. 
data_clean <- data[,c(2, 3, grep("mean", colnames(data)), grep("std", colnames(data)))]

# changing subjects to factor 
data_clean$subject <- as.factor(data_clean$subject)

#-----
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
# average of each variable for each activity and each subject.

#reshaping the dataset using melt (reshape2 package)
melt_data <- melt(data_clean, id = c("subject", "activity"))

#  caculating the mean function using dcast
data_tidy <- dcast(melt_data, subject + activity ~ variable, mean)

# ---
# saving the data_tidy df as a txt file
write.table(data_tidy, file = "./data_tidy.txt", row.name = FALSE )

