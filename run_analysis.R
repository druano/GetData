# Function to read multiple files 
read.tables <- function(file.names, ...) {
        require(plyr)
        ldply(file.names, function(x) read.table(x, ...))
}

# 1. Merges the training and the test sets to create one data set.
df <- read.tables(c("./test/X_test.txt", "./train/X_train.txt")) # merge variables
act <- read.tables(c("./test/y_test.txt", "./train/y_train.txt"), col.names = "activity") # merge activities 
subjects <- read.tables(c("./test/subject_test.txt", "./train/subject_train.txt"), col.names = "subject") # merge subjects

# 4. Appropriately labels the data set with descriptive variable names.
feature <- read.table("features.txt") # read the labels
labels <- sub("()","",feature$V2, fixed =TRUE) # remove () from the labels
colnames(df) <- sub("BodyBody","Body",labels, fixed =TRUE) # assign the activity labels as column names

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.  
mean_std <- df[, grep("mean-|mean$|std", names(df))]

# 3. Uses descriptive activity names to name the activities in the data set
labels = setNames(c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"), 
               c(1, 2, 3, 4, 5, 6))
act[] <- labels[unlist(act)]

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
split_data <- split (mean_std,c(subjects,act)) # split the object with all the variables per each combination of subject and activity
symplify_data <- sapply(split_data, function(x) colMeans(x), simplify=T) # * Per each sample and activity combination compute the average of each variable
t_data <- t(symplify_data) # transpose the genereted data.frame
final_data <- cbind("subject" = sub("\\..*", "", row.names(t_data)), 
                    "activity" = sub(".*\\.", "", row.names(t_data)),
                    t_data) # add subject and activity information to the data.frame using the rownames

# Write the tidy data produced to a file named "tidyData.txt"
write.table(final_data, file = "tidyData.txt", quote =FALSE, sep = "\t", row.names = FALSE)
