Getting_and_Cleaning_Data_project
=================================

JHDSS Getting and Cleaning Data (Coursera), project

Script (run_analysis.R) merges subject, activity and measurement data from the UCI Human Activity Recognition (HAR) dataset; requires .txt files "X_train","X_test","subject_train","subject_test","y_train","y_test","features" and "activity_labels."; assumes these files are located in directory.

Train and test measurement, subject and activity data are row-bound to provide three merged (10299 observations)
data frames. The subject and activity data frames are merged, with variables named as such. "Activity" is made a factor variable with the relevant activity labels ("activity_labels.txt").

Measurement variables containing the mean ("mean()"), mean frequency ("meanFreq()") or standard deviation ("std()") are subsetted.

Measurement descriptors are loaded ("features.txt") and edited to increase readability. Measurement variables renamed with edited descriptors.

Merged subject and activity data frames are (column) merged with subsetted measurement variables.

A new data frame ("tidy_agg") is created which, for each subsetted measurement variable, for each unique subject and activity pair, the mean is given. A .txt of this new data frame is output as "tidy_data_set.txt".
