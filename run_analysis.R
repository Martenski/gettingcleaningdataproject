# setting working directory to location of source files
# setwd("E:/Cloudstation/R/courseproject/dataset")

# loading necessary packages
library(dplyr)
library(tidyr)

# reading in all source files
features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

subject_test <- read.table("test/subject_test.txt")
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")

subject_train <- read.table("train/subject_train.txt")
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")

# giving appropriate column names to source files
names(subject_test) <- "subject"
names(subject_train) <- "subject"
names(y_test) <- "activity"
names(y_train) <- "activity"
names(X_test) <- features[, 2]
names(X_train) <- features[, 2]

# selecting appropriate columns from X (i.e. with "mean" or "std" in name)
mean_col <- grep("mean+", features[,2], ignore.case=TRUE, perl=TRUE)
std_col <- grep("std+", features[,2], ignore.case = TRUE, perl=TRUE)
selection <- sort(c(mean_col, std_col))
X_test_sel <- X_test[, selection]
X_train_sel <- X_train[, selection]

# making sure the datasets can be merged without losing data
X_test_sel[, "dataset"] <- "test"
X_train_sel[, "dataset"] <- "train"

# merging datasets horizontally
test <- data.frame(subject_test, y_test, X_test_sel)
training <- data.frame(subject_train, y_train, X_train_sel)

# merging datasets vertically
full_dataset <- rbind(test, training)

# reducing memory usage by removing the no longer needed large variables
rm(X_test)
rm(X_test_sel)
rm(X_train)
rm(X_train_sel)
rm(test)
rm(training)

# tidying data step 1: collapsing the 86 columns with measurement data into
# two columns, thereby also expanding the number of rows in the dataset
full_dataset_gathered <- gather(full_dataset, measurement, values_norm, 
                                3:88, -subject, -activity, -dataset)

# calculating the mean of the measurement data per subject and activity
full_dataset_mean <- 
    full_dataset_gathered %>%
    group_by(subject, activity, measurement) %>%
    summarize(mean_values = mean(values_norm))

# again reducing memory usage by removing the no longer needed large variables
rm(full_dataset)
rm(full_dataset_gathered)

# tidying data step 2: giving the activity numbers their actual name and 
# sorting the resulting set
full_dataset_mean_temp <- 
    merge(full_dataset_mean, activity_labels, by.x="activity", by.y="V1", all=TRUE) %>%
    arrange(subject, activity, measurement)

# tidying data step 3: removing an unnecessary column and ordering remaining columns
full_dataset_mean_temp <- full_dataset_mean_temp[, -1]
colnames(full_dataset_mean_temp)[4] <- "activity"
full_dataset_mean_named <- full_dataset_mean_temp[, c(1, 4, 2, 3)]

# exporting the obtained dataframe to a txt file (note: MW are my initials)
write.table(full_dataset_mean_named, file="tidy_data_MW.txt", row.name=FALSE)
    








