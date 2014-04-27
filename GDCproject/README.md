# Getting And Cleaning Data Project
## Overview
The purpose of this project is to demonstrate an ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
The project is an assignment in the 'Getting And Cleaning Data' course.

The folder of this project contains [1] A tidy data file; [2] a CodeBook (CodeBook.md) file that describes the variables, data and the cleaning process. [3] An R script (run_analysis.R) that loads the data and performs the cleanup/formatting. [4] This README.md file. 

- The CodeBook.md file describes the data and how to use this project
- This README.md file describes the content of the run_analysis.R script

## Base Assumptions
- The data for this project resides in the following location: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Create a <project path> for this project and extract the zip into it (you should see <project path>/UCI HAR Dataset forlder after the extraction)
- Change RStudio's working directory to <project path> (setwd("<project path>"))
- Copy the R Script run_analysis.R into <project path> 
- Execute the R script through the use of the following command: source("run_analysis.R")

The R script will perform the followings: 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


## Script Content
The script starts by the definition of the required packages. 
Information is retrieved from the files. First the test data and then the training data.
Activity labels are loaded and used for merging the data. First merge is done on y while
using V1 as the mergingh column.
A merged dataset is then created, combiling x,y and the subject alltogether.
The features list is loaded and the row numbers of the std or mean features are analyzed. 
The merged dataset will be used as the base for the following operations: 
- New column headers are added  (subject, activity_id, activity)
- The dataset is reduced to hold only the mean|std values
- Information on subject, activity_id, activity is assimilated into the ds (melt of data and then dcast)
- And finally, the data is written into a file. tidy.ds