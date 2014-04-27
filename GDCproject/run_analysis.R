## Set the Working Directory
## -- we assume this to be done by the user to fit to its own path
##setwd("C:\\Users\\Gal\\Documents\\GitHub\\GettingAndCleaningData\\GDCproject")

## Define and load the required packages
packages <- c("data.table", "reshape2")
sapply(packages, require, character.only=TRUE, quietly=TRUE)

## Read the test set
x_test_set <-read.table("./UCI HAR Dataset/test/X_test.txt", sep="")
y_test_set <-read.table("./UCI HAR Dataset/test/y_test.txt", sep="")
subject_test_set <-read.table("./UCI HAR Dataset/test/subject_test.txt", sep="")

## Read the train set
x_train_set <-read.table("./UCI HAR Dataset/train/X_train.txt", sep="")
y_train_set <-read.table("./UCI HAR Dataset/train/y_train.txt", sep="")
subject_train_set <-read.table("./UCI HAR Dataset/train/subject_train.txt", sep="")

## Read activity labels
labels <-read.table("./UCI HAR Dataset/activity_labels.txt", sep="")

## Merge the Data

## Merge y sets with activity_labels
y_train_labels<-merge(y_train_set, labels, by="V1")
y_test_labels <-merge(y_test_set,  labels, by="V1")

## train_data<-cbind(subject_train_set, y_train_labels, x_train_set)
## test_data<-cbind(subject_test_set, y_test_labels, x_test_set)

## Generate Merged Dataset
ds<-(rbind(cbind(subject_train_set, y_train_labels, x_train_set), 
           cbind(subject_test_set, y_test_labels, x_test_set)))

features<-read.table("./UCI HAR Dataset/features.txt")
## look for row numbers of relevant features (mean or std)
mean_std_features_rows<-grep("mean\\(|std\\(", features$V2)

## Add column headers Subject, activity_id, activity to the combined data 
colnames(ds) <- c("Subject","Activity_Id","Activity",as.vector(features$V2))

## Generate Extracted mean,std dataset
#extracted_mean_std_ds<-ds[,c(1,2,3,mean_std_cols)]
extracted_mean_std_ds<-ds[,c(1,2,3,colnames(ds))]

## Finally, melt the data
melted_d<-melt(extracted_mean_std_ds,id=c("Subject","Activity_Id","Activity"))
tidy<-dcast(melted_d, formula=Subject+Activity_Id+Activity ~ variable, mean)

write.table(tidy, file="./tidy_ds.txt", sep="\t", row.names=FALSE)
