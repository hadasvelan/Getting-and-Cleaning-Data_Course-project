# Getting and Cleaning Data - Course Project
# README file


The data is the results of a study that has been carried out with a group of 30 volunteers (age 19-48). Each participant performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING & LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## Aim of the project
The task of this project is to create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

----
## The raw data files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total\_acc\_x\_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total\_acc\_x\_train.txt' and 'total\_acc\_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body\_acc\_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body\_gyro\_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

----
## Cleaning the data

1. Loading the `reshape2` package

2. The data was downloaded from 
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
and was extracted into the _data_ directory.

3. Measurement names were read from the `features.txt` file to `feature_labels` data frame. This data frame consists of 561 measures in 2 variables (V1 - variable code, V2 - variable names)
Measures' names were transformed (see *codebook*) so they will be human readable.

4. Reading the train files
Reading the training files `X_train.txt`, `subject_train.txt` & `y_train.txt` into the `train_df`, `train_subjects` & `train_labels` data frames respectively.
+ `train_df` consists of 7352 rows and 561 (the measures) columns. Note, all measurements are normalised (namely, values between -1,1)
+ `train_subjects` consists of a single column with 7352 rows
+ `train_labels` consists of a single column with 7352 rows
The three datasets were combined using `cbind()` into a `train_data` data frame. In addition, in order to be able to follow the source of the data an additional variable was added, a _group_ variable, that states that this is data from the training set (value is _train_). The `train_data` data frame consists of 7352 rows and 564 columns.

4. Reading the test files
Similar steps were taken with the test data (all names had _test_ rather than _train_). The final `test_data` consists of 2947 rows and 564 columns. As in the train data, all measurements are normalised.

5. Combining the test and training data into a unified data frame
The `test_data` and the `train_data` were combined using the `rbind()` function into a `data_temp` data frame. The `data_temp` data frame consists of 10299 rows and 564 columns.

6. The activity labels were read from the `activity_labels.txt` file into the `activity_labels` data frame. The `activity_labels` data frame consists of 6 lines and 2 columns (*activity_label* & *activity*).

7. Forming a new data frame, `data` by adding the activity name to the training and test (`data_temp`) data frame using merge.

8. Extracting only a the relevant columns to new data frame
Selecting the subject, activity and all measures that contain either the word mean or std in their name into a new data frame, `data_clean` data frame (consists of 10299 rows and 88 columns) and transforming the _subject_ variable into a factor.


-----
## Tidy data

1. Reshaping the `data_clean` data frame with the `melt()` function from the `reshape2` package (id is subject and activity) and forming a new data frame - `melt_data`.

2. Calculating the mean function using `dcas()` function from the `reshape2` package into a new `data_tidy` data frame. This data frame consists of 180 rows and 88 columns.

3. Saving the `data_tidy` data frame as a txt file using the write.table() function (note, row.name = FALSE).

