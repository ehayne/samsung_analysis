# This program assumes the Samsung data is in your working directory.
# Run download.R to put it there.
# 0. read in the files
library(plyr)
library(data.table)

train_X <- read.csv("UCI HAR Dataset/train/X_train.txt")
train_y <- read.csv("UCI HAR Dataset/train/y_train.txt")
train_subject <- read.csv("UCI HAR Dataset/train/subject_train.txt")

test_X <- read.csv("UCI HAR Dataset/test/X_test.txt")
test_y <- read.csv("UCI HAR Dataset/test/y_test.txt")
test_subject <- read.csv("UCI HAR Dataset/test/subject_test.txt")

# 1.  Merges the training and the test sets to create one data set.

train_X_transpose <- as.data.frame(t(train_X))
print(nrow(train_X_transpose))
print(ncol(train_X_transpose))
train_X <- as.data.frame(t(train_X_transpose))
print(nrow(train_X))
print(ncol(train_X))

merged_train <- cbind(train_X, train_y, train_subject)
colnames(merged_train) <- c("first","second","third")
merged_train2 <- cbind(t(as.vector(train_X)), train_y, train_subject)

merged_test <- cbind(test_X, test_y, test_subject)

# 2. Extracts only the measurements on the mean and standard deviation for each
# measurement.


# 3. Uses descriptive activity names to name the activities in the data set



# 4. Appropriately labels the data set with descriptive variable names.



# 5. From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.


