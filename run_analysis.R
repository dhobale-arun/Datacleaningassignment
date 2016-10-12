##This is a R script for data cleaning assignment.
##Load the following the library.
library(reshape2)

##Step no. 1 : Merges the training and test data sets.
subject_train <- read.table("subject_train.txt")
subject_test <- read.table("subject_test.txt")
X_train <- read.table("X_train.txt")
X_test <- read.table("X_test.txt")
y_train <- read.table("y_train.txt")
y_test <- read.table("y_test.txt")

# Now naming the column for subject files
names(subject_train) <- "subjectID"
names(subject_test) <- "subjectID"

# Similarly adding names for measurement files
featureNames <- read.table("features.txt")
names(X_train) <- featureNames$V2
names(X_test) <- featureNames$V2

# Adding names to the label files
names(y_train) <- "activity"
names(y_test) <- "activity"

# Combining files into one dataset
train <- cbind(subject_train, y_train, X_train)
test <- cbind(subject_test, y_test, X_test)
dataset <- rbind(train, test)

##Step no. 2 : Extracting the mean and sd for each measurement
cols <- grepl("mean\\(\\)", names(dataset)) | grepl("std\\(\\)",names(dataset))
cols[1:2] <- TRUE
# Removing the unnecessary columns
dataset <- dataset[,cols]

## Step no. 3 : Uses descriptive activity names to name ## the activities in the data set.
## Step no. 4 : Appropriately labels the data set with ## descriptive activity names.

dataset$activity <- factor(dataset$activity,labels=c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))

## Step no. 5 : Create a second independent tidy data ## set with the average of each variable for each ##activity and each subject. 

melted <- melt( dataset, id=c("subjectID","activity"))
tidy <- dcast(melted, subjectID+activity ~ variable,mean)

# Writing the tidy data set to a file 
write.csv(tidy, "tidy.csv", row.names=FALSE)



