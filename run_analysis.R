## This script can be run on the directory "UCI HAR Dataset" obtained by zip extraction

## read the train dataset
train_data <- read.table("UCI HAR Dataset\\train\\X_train.txt", header = FALSE, sep="")
train_data$index <- seq.int(nrow(train_data))  ## create a row index to perform the merge between different tables

## get the id of the subject in the train dataset
subject_train_id <- read.table("UCI HAR Dataset\\train\\subject_train.txt", sep="", header= FALSE)
names(subject_train_id)[1] <- "subject_ID"
subject_train_id$index <- seq.int(nrow(subject_train_id)) ## create a row index to perform the merge between different tables

## get the activity_id
activity_train_id <- read.table("UCI HAR Dataset\\train\\y_train.txt", sep="", header= FALSE)
names(activity_train_id)[1] <- "activity_ID"
activity_train_id$index <- seq.int(nrow(activity_train_id)) ## create a row index to perform the merge between different tables

## get activity_labels 
activity_labels <- read.table("UCI HAR Dataset\\activity_labels.txt", sep="", header= FALSE)
names(activity_labels)[1] <- "activity_ID" ## rename the col
names(activity_labels)[2] <- "activity"    ## rename the col

##merge activity_id with activity_labels
activity_train_data <- merge(activity_train_id, activity_labels, by= "activity_ID")
activity_train_data <- activity_train_data[order(activity_train_data$index), ]
activity_train_data <- activity_train_data[,-1] ## suppress useless variable

## merge subject_id and activity_id by index
data_train_merge1 <- merge(subject_train_id, activity_train_data, by ="index")

## merge subject_id, activity_id and the features 
merged_data_train <- merge(data_train_merge1, train_data, by ="index")

## we will perform the same code apply to the train dataset on the test dataset
## read the test dataset
test_data <- read.table("UCI HAR Dataset\\test\\X_test.txt", header = FALSE, sep="")
test_data$index <- seq.int(nrow(test_data))  ## create a row index to perform the merge between different tables

## get the id of the subject in the test dataset
subject_test_id <- read.table("UCI HAR Dataset\\test\\subject_test.txt", sep="", header= FALSE)
names(subject_test_id)[1] <- "subject_ID"
subject_test_id$index <- seq.int(nrow(subject_test_id)) ## create a row index to perform the merge between different tables

## get the activity_id
activity_test_id <- read.table("UCI HAR Dataset\\test\\y_test.txt", sep="", header= FALSE)
names(activity_test_id)[1] <- "activity_ID"
activity_test_id$index <- seq.int(nrow(activity_test_id)) ## create a row index to perform the merge between different tables

##merge activity_id with activity_labels
activity_test_data <- merge(activity_test_id, activity_labels, by= "activity_ID")
activity_test_data <- activity_test_data[order(activity_test_data$index), ]
activity_test_data <- activity_test_data[,-1] ## suppress useless variable

## merge subject_id and activity_id by index
data_test_merge1 <- merge(subject_test_id, activity_test_data, by ="index")

## merge all the test data
merged_data_test <- merge(data_test_merge1, test_data, by ="index")

## Creating the tidy dataset
my_tidy_data <- rbind(merged_data_train, merged_data_test)

## get only the features required that contain mean or std in features dataset
features <- read.table("UCI HAR Dataset\\features.txt", header = FALSE, sep="")
features_select <- subset(features, grepl("mean()|std()",features[,2]))

## list of the features I want ot keep in the merged dataset the +3 is for index/subject_id/activity
features_list <- features_select[,1] + 3
keep <- c(1,2,3,features_list)

## list of the names I want to keep / convert to character because it's a factor in the dataset
features_name <- as.character(features_select[,2])

## select the columns in the merged train_test datatset for mean and std
my_tidy_data_select <- my_tidy_data[,c(keep)]

## rename the features by a comprehensive name
range <- seq(1,length(features_name))

for(i in range){
	names(my_tidy_data_select)[i+3] <- features_name[i]
}

## script for the second tidy dataset required to pass
## Show average revenue per customer and per segment
avg_by_subject_activity <- aggregate(my_tidy_data_select, by = list(my_tidy_data_select$subject_ID, my_tidy_data_select$activity), FUN="mean", na.rm=TRUE)
avg_by_subject_activity <- avg_by_subject_activity[,c(-3,-4,-5)]
names(avg_by_subject_activity)[1] <- "Subject_ID"
names(avg_by_subject_activity)[2] <- "Activity"

## here is the firts required tidy_data_set !
#my_tidy_data_select <-my_tidy_data_select[,-1]
#write.table(my_tidy_data_select, file="UCI HAR Dataset\\my_tidy_data1.txt", row.names=FALSE)

## here is the second required tidy_data_set for the mean variables!
write.table(avg_by_subject_activity, file="UCI HAR Dataset\\avg_my_tidy_data1.txt", row.names=FALSE)
