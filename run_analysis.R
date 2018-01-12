#Load in the data and libraries
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
sub_train <- read.table("train/subject_train.txt")
sub_test <- read.table("test/subject_test.txt")
activity <- read.table("activity_labels.txt")
library("dplyr")
#Merge the training and the tests sets to create one data set
c_all <- rbind(cbind(X_train, sub_train, y_train), cbind(X_test, sub_test,y_test))
features <- c(as.character(read.table('features.txt')[,2]), "Subject_No", "Activity")
names(c_all) <- features

#Extract only the measurements on the mean and standard deviation for each measurement
temp <- as.character(grep(".*mean()|.*std()", names(c_all), value=TRUE))
temp <- c(temp, "Activity", "Subject_No")
ms_only <- c_all[,temp]

#Use descriptive activity names to name the activities in the data set
#Appropriately label teh data set with descriptive variable names
new <- merge(ms_only, activity, by.x = "Activity", by.y = "V1") %>% select(-Activity) %>% rename(Activity = V2)

#From the data set in the previous step, create a second, independent tidy data set with the average of each variable for each activity and each subject
grouped <- group_by(new, Activity, Subject_No)
summarized <- summarize_all(grouped, "mean")

#Save output
write.table(summarized, "output.txt")
