## Base Data Information
### Data Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
### Data Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Generated Data
The outcome of the execution of the run_analysis.R would appear in a generated file: tidy_ds.txt
The file will be generated at the current working directory (please see the README.md for reproducible steps)

## Steps for producing the result data set: 
The following are the data transformation steps that executed by the run_analysis.R script:
1. Read the test data
2. Read the training data
3. Load Activity labels and use for merging the data. 
-  First merge is done on y while using V1 as the merging column.
4. A merged dataset is then created, combiling x,y and the subject alltogether.
5. Load the features list and look for the row numbers of the std or mean features in it.
6. Use the merged dataset as the base for the following operations: 
6.1 Generate new column headers (subject, activity_id, activity)
6.2 Subset the dataset to hold only the mean|std values
6.3 Assimilate information on subject, activity_id, activity into the ds
6.4 Write the data into a file: tidy.ds

## Variable descriptions
For a complete description of each of the headers, please look at the link above. 

The analysis extracts the mean and std values out of the original data set. 
The complete list of headers is provided below.

## Data Headers
1   Subject
2	  Activity_Id
3	  Activity
4	  tBodyAcc-mean()-X
5	  tBodyAcc-mean()-Y
6	  tBodyAcc-mean()-Z
7	  tBodyAcc-std()-X
8	  tBodyAcc-std()-Y
9	  tBodyAcc-std()-Z
10	tGravityAcc-mean()-X
11	tGravityAcc-mean()-Y
12	tGravityAcc-mean()-Z
13	tGravityAcc-std()-X
14	tGravityAcc-std()-Y
15	tGravityAcc-std()-Z
16	tBodyAccJerk-mean()-X
17	tBodyAccJerk-mean()-Y
18	tBodyAccJerk-mean()-Z
19	tBodyAccJerk-std()-X
20	tBodyAccJerk-std()-Y
21	tBodyAccJerk-std()-Z
22	tBodyGyro-mean()-X
23	tBodyGyro-mean()-Y
24	tBodyGyro-mean()-Z
25	tBodyGyro-std()-X
26	tBodyGyro-std()-Y
27	tBodyGyro-std()-Z
28	tBodyGyroJerk-mean()-X
29	tBodyGyroJerk-mean()-Y
30	tBodyGyroJerk-mean()-Z
31	tBodyGyroJerk-std()-X
32	tBodyGyroJerk-std()-Y
33	tBodyGyroJerk-std()-Z
34	tBodyAccMag-mean()
35	tBodyAccMag-std()
36	tGravityAccMag-mean()
37	tGravityAccMag-std()
38	tBodyAccJerkMag-mean()
39	tBodyAccJerkMag-std()
40	tBodyGyroMag-mean()
41	tBodyGyroMag-std()
42	tBodyGyroJerkMag-mean()
43	tBodyGyroJerkMag-std()
44	fBodyAcc-mean()-X
45	fBodyAcc-mean()-Y
46	fBodyAcc-mean()-Z
47	fBodyAcc-std()-X
48	fBodyAcc-std()-Y
49	fBodyAcc-std()-Z
50	fBodyAccJerk-mean()-X
51	fBodyAccJerk-mean()-Y
52	fBodyAccJerk-mean()-Z
53	fBodyAccJerk-std()-X
54	fBodyAccJerk-std()-Y
55	fBodyAccJerk-std()-Z
56	fBodyGyro-mean()-X
57	fBodyGyro-mean()-Y
58	fBodyGyro-mean()-Z
59	fBodyGyro-std()-X
60	fBodyGyro-std()-Y
61	fBodyGyro-std()-Z
62	fBodyAccMag-mean()
63	fBodyAccMag-std()
64	fBodyBodyAccJerkMag-mean()
65	fBodyBodyAccJerkMag-std()
66	fBodyBodyGyroMag-mean()
67	fBodyBodyGyroMag-std()
68	fBodyBodyGyroJerkMag-mean()
69	fBodyBodyGyroJerkMag-std()
