# Codebook 

The data used for this project can be downloaded at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
A detailed overview of the data can also be downloaded from the site.

## Variables
* Activity
* Subject_No
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

## Cleaning and Transformation 
To come up with the tidy data set included here, I first combined the training and test sets into one larger data set. 
After this, I extracted the measurements corresponding to mean and standard deviation for each of the variables. 
I then labelled each of the activities with a descriptive name instead of just a number value. 
Lastly, I grouped the data into activity and subject number and took the average of each of the variables to arrive at the final data set. 

