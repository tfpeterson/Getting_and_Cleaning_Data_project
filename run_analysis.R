##JHDSS, Getting and Cleaning Data, project

##description:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
##dataset:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##dataset citation:
##Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra
##	and Jorge L. Reyes-Ortiz. Human Activity Recognition on 
##    Smartphones using a Multiclass Hardware-Friendly Support 
##    Vector Machine. International Workshop of Ambient Assisted Living 
##   (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

#verify that "X_test.txt","X_train.txt","subject_test.txt,"subject_train.txt",
#"y_test.txt","y_train.txt","features.txt" and "activity_labels.txt" are 
#present in directory
list.files()

#row merge train and test data
train <- read.table("X_train.txt")
test <- read.table("X_test.txt")

#str(train) #'data.frame':   7352 obs. of  561 variables
#str(test) #'data.frame':   2947 obs. of  561 variables

train_test <- rbind(train,test)
#str(train_test) #'data.frame':   10299 obs. of  561 variables

#sum(is.na(train_test)) #[1] 0

#row merge subject train and subject test data
subject_test <- read.table("subject_test.txt")
subject_train <- read.table("subject_train.txt")
subject_train_test <- rbind(subject_train,subject_test)
#str(subject_train_test)

#row merge activity train and activity test data
y_test <- read.table("y_test.txt")
y_train <- read.table("y_train.txt")
y_train_test <- rbind(y_train,y_test)
#str(y_train_test)

#column merge subject and activity data
subject_y <- cbind(subject_train_test,y_train_test)

#name subject_y variables, "subject" and "activity"
colnames(subject_y) <- c("subject","activity")
#str(subject_y) #'data.frame':   10299 obs. of  2 variables

#load, print activity labels
activity_labels <- read.table("activity_labels.txt")
activity_labels

#create "activity" factor variable, levels and labels
subject_y[,2] <- factor(subject_y[,2],labels=c("walking","walkingUpstairs",
	"walkingDownstairs","sitting","standing","laying"))

#load features, assign as variable names to train_test
features <- read.table("features.txt")
featureNames <- as.character(features[,"V2"])
#str(featureNames)

colnames(train_test) <- featureNames
#str(train_test)

#subset those variables labeled mean,"mean()", or standard deviation, "std()"
#for a given measurement
sub_train_test <- train_test[, grepl("(mean|std)", names(train_test))]
#str(sub_train_test) #'data.frame':   10299 obs. of  79 variables

#x <- sub_train_test[sample(nrow(sub_train_test),20),]

#label measurement variables with more readable descriptives
tidy_names <- gsub("BodyBody","Body",names(sub_train_test))
tidy_names <- gsub("mean","Mean",tidy_names)
tidy_names <- gsub("std","Std",tidy_names)
tidy_names <- gsub("[()]","",tidy_names)
tidy_names <- gsub("-","_",tidy_names)
tidy_names <- gsub("Acc","Accelerometer",tidy_names)
tidy_names <- gsub("Gyro","Gyroscope",tidy_names)
tidy_names <- gsub("^t","time",tidy_names)
tidy_names <- gsub("^f","fourier",tidy_names)
tidy_names <- gsub("Mag","Magnitude",tidy_names)

#replace sub_train_test column names with "tidy_names"
colnames(sub_train_test) <- tidy_names

#column merge subject_y and sub_train_test to create tidy dataset
#project items 1-4
tidy_data <- cbind(subject_y,sub_train_test)
#str(tidy_data) #'data.frame':   10299 obs. of  81 variables
#sum(is.na(tidy_data)) #[1] 0

#From the data set in step 4, creates a second, independent tidy data set
#with the average of each variable for each activity and each subject.

tidy_agg <- aggregate(. ~subject+activity,data=tidy_data,FUN=mean)
#str(tidy_agg) #'data.frame':   180 obs. of  81 variables

#output .txt of "tidy_agg"
write.table(tidy_agg,file="tidy_data_set.txt",row.names=FALSE)

#tidy_agg_test <- read.table("tidy_data_set.txt",header=T)
#str(tidy_agg_test) #'data.frame':   180 obs. of  81 variables
