# This is a script to prepare the tidy data set for Getting and Cleaning Data

# All files have been saved to my working directory and are each read into a table.

# The 561 features are the column labels for the measurements.
features <- read.table("features.txt")

# The subjects of the experiment, 1 through 30, are split in two files, 21 distinct subjects in the train 
# set and 9 distinct subjects in the test set.  

# The three files that correspond to train each have 7352 rows.  The three files that correspond to test each have
# 2947 rows.
subjtrn <- read.table("subject_train.txt")
subjtst <- read.table("subject_test.txt")

# The mesurement data are in X_train.txt and X_test.txt  
datatrn <- read.table("X_train.txt")
datatst <- read.table("X_test.txt")

# The 6 activities are in y_train.txt and y_test.txt
actytrn <- read.table("y_train.txt")
actytst <- read.table("y_test.txt")

# Convert the features to character and make a vector with each forced to unique.
features <- as.character(features$V2)
feats <- make.names(features, unique=TRUE)


# Bind the columns, Subject, Activity, and measurement for train and test. 
testdat <- cbind(subjtst, actytst, datatst)
trndat <- cbind(subjtrn, actytrn, datatrn)

# Bind the rows of those two. 
totdat <- rbind(testdat, trndat)

#Create the column names vector.
cnames <- c("Subject", "Activity", feats)

# Add the column names to the combined matrix.  The result is a data frame with 10,299 observations in
# 563 columns, one each for Subject and Activity - and 561 for the measurements.
colnames(totdat) <- cnames

# Substitute the activity name for each occurrence ( 1 through 6) of the activity code.
for (i in 1:10299){
       if(totdat$Activity[i] == 1) {totdat$Activity[i] <- "Walking"}
       else
       if(totdat$Activity[i] == 2) {totdat$Activity[i] <- "Walking_Ustairs"}
       else
       if(totdat$Activity[i] == 3) {totdat$Activity[i] <- "Walking_Downstairs"}
       else
       if(totdat$Activity[i] == 4) {totdat$Activity[i] <- "Sitting"}
       else
       if(totdat$Activity[i] == 5) {totdat$Activity[i] <- "Standing"}
       else
       if(totdat$Activity[i] == 6) {totdat$Activity[i] <- "Laying"}
       
}

# Using dplyr, select only those columns with "mean" or "std" in the column name.
seldat <- select(totdat, Subject, Activity, matches("mean|std", ignore.case = TRUE))

# Group the resulting data frame by Subject, then Activity, and summarise the mean of each column.
gseldat <- seldat %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

# Write the table to a .txt file.
write.table(gseldat, "gseldat.txt", row.name = FALSE)


