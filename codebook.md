# samsung_data repository
# codebook for my_tidy_data.txt and avg_my_tidy_data.txt 

## my_tidy_data.txt

This dataset contains 81 variables and 10299 observations :
* subject_id : is the number of the subject who performs the test, it's an integer
* activity : is the activity which is performed by the subject, it's a 6 factor variable in {WALKING, STANDING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, LAYING}
* then there are 79 variables for mean and std values of the variables which are double :
  * tBodyAcc-mean()-X	
  * tBodyAcc-mean()-Y	
  * tBodyAcc-mean()-Z	
  * tBodyAcc-std()-X	
  * tBodyAcc-std()-Y	
  * tBodyAcc-std()-Z	
  * tGravityAcc-mean()-X	
  * tGravityAcc-mean()-Y	
  * tGravityAcc-mean()-Z	
  * tGravityAcc-std()-X	
  * tGravityAcc-std()-Y	
  * tGravityAcc-std()-Z	
  * tBodyAccJerk-mean()-X	
  * tBodyAccJerk-mean()-Y	
  * tBodyAccJerk-mean()-Z	
  * tBodyAccJerk-std()-X	
  * tBodyAccJerk-std()-Y	
  * tBodyAccJerk-std()-Z	
  * tBodyGyro-mean()-X	
  * tBodyGyro-mean()-Y	
  * tBodyGyro-mean()-Z	
  * tBodyGyro-std()-X	
  * tBodyGyro-std()-Y	
  * tBodyGyro-std()-Z	
  * tBodyGyroJerk-mean()-X	
  * tBodyGyroJerk-mean()-Y	
  * tBodyGyroJerk-mean()-Z	
  * tBodyGyroJerk-std()-X	
  * tBodyGyroJerk-std()-Y	
  * tBodyGyroJerk-std()-Z	
  * tBodyAccMag-mean()	
  * tBodyAccMag-std()	
  * tGravityAccMag-mean()	
  * tGravityAccMag-std()
  * tBodyAccJerkMag-mean()
  * tBodyAccJerkMag-std()
  * tBodyGyroMag-mean()
  * tBodyGyroMag-std()
  * tBodyGyroJerkMag-mean()	
  * tBodyGyroJerkMag-std()	
  * fBodyAcc-mean()-X	
  * fBodyAcc-mean()-Y	
  * fBodyAcc-mean()-Z	
  * fBodyAcc-std()-X	
  * fBodyAcc-std()-Y	
  * fBodyAcc-std()-Z	
  * fBodyAcc-meanFreq()-X	
  * fBodyAcc-meanFreq()-Y	
  * fBodyAcc-meanFreq()-Z	
  * fBodyAccJerk-mean()-X	
  * fBodyAccJerk-mean()-Y	
  * fBodyAccJerk-mean()-Z	
  * fBodyAccJerk-std()-X	
  * fBodyAccJerk-std()-Y	
  * fBodyAccJerk-std()-Z	
  * fBodyAccJerk-meanFreq()-X	
  * fBodyAccJerk-meanFreq()-Y	
  * fBodyAccJerk-meanFreq()-Z	
  * fBodyGyro-mean()-X	
  * fBodyGyro-mean()-Y	
  * fBodyGyro-mean()-Z	
  * fBodyGyro-std()-X	
  * fBodyGyro-std()-Y	
  * fBodyGyro-std()-Z	
  * fBodyGyro-meanFreq()-X	
  * fBodyGyro-meanFreq()-Y	
  * fBodyGyro-meanFreq()-Z	
  * fBodyAccMag-mean()	
  * fBodyAccMag-std()	
  * fBodyAccMag-meanFreq()	
  * fBodyBodyAccJerkMag-mean()	
  * fBodyBodyAccJerkMag-std()	
  * fBodyBodyAccJerkMag-meanFreq()	
  * fBodyBodyGyroMag-mean()	
  * fBodyBodyGyroMag-std()	
  * fBodyBodyGyroMag-meanFreq()	
  * fBodyBodyGyroJerkMag-mean()	
  * fBodyBodyGyroJerkMag-std()	
  * fBodyBodyGyroJerkMag-meanFreq()

## avg_my_tidy_data.txt

This dataset contains 81 variables and 180 observations :
* subject_id : is the number of the subject who performs the test, it's an integer
* activity : is the activity which is performed by the subject, it's a 6 factor variable in {WALKING, STANDING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, LAYING}
* then there are 79 variables which are the mean of the variables explained below BodyXXX... averaged by subject_id and activity
