# This program assumes the Samsung data is in your working directory.
# Run download.R to put it there.
# 0. read in the files

train_X <- read.csv("UCI HAR Dataset/train/X_train.txt")
train_X_transpose <- as.data.frame(t(train_X))
train_y <- read.csv("UCI HAR Dataset/train/y_train.txt")
train_subject <- read.csv("UCI HAR Dataset/train/subject_train.txt")

test_X <- read.csv("UCI HAR Dataset/test/X_test.txt")
test_X_transpose <- as.data.frame(t(test_X))
test_y <- read.csv("UCI HAR Dataset/test/y_test.txt")
test_subject <- read.csv("UCI HAR Dataset/test/subject_test.txt")

# 1.  Merges the training and the test sets to create one data set.
# library(plyr)

data_train <- list(train_X_transpose, train_y, train_subject)
merged_train <- head(rbind.fill(data))

data_test <- list(test_X_transpose, test_y, test_subject)
merged_test <- head(rbind.fill(data))

# 2. Extracts only the measurements on the mean and standard deviation for each
# measurement.


# 3. Uses descriptive activity names to name the activities in the data set



# 4. Appropriately labels the data set with descriptive variable names.



# 5. From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.


