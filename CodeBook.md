---
title: "Code Book"
author: "Nick Shenefield - Coursera"
date: "12/18/2019"
output:
  html_document:
    df_print: paged
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Code Book

The run_analysis.r script executes the data prep and then performs each step in a stepwise manner in which the data is tidyed up into a 'FinalData' Table.

## Step One

First the data set is downloaded and extracted under a folder that is called 'UCI HAR Dataset'

## Step Two

Next the data is assigned to a variable by each file that comes in through the data download.

features <- features.txt: 561 rows, 2 columns
  The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
  
activities <- activity_labels.txt: 6 rows, 2 columns
  List of activities performed when the corresponding measurements were taken and its codes (labels)
  
subject_test <- test/subject_test.txt: 2947 rows, 1 column
  Contains test data of 9/30 volunteer test subjects being observed
  
x_test <- test/X_test.txt: 2947 rows, 561 columns
  Contains recorded features test data
  
y_test <- test/y_test.txt: 2947 rows, 1 columns
  Contains test data of activities' code labels
  
subject_train <- test/subject_train.txt: 7352 rows, 1 column
  contains train data of 21/30 volunteer subjects being observed
  
x_train <- test/X_train.txt: 7352 rows, 561 columns
  Contains recorded features train data
  
y_train <- test/y_train.txt: 7352 rows, 1 column
  Contains train data of activities' code labels
  
## Step Three

Merges the training and the test sets to create one data set
  x (10299 rows, 561 columns) is created by merging x_train and x_test using rbind() function
  y (10299 rows, 1 column) is created by merging y_train and y_test using rbind() function
  Subject (10299 rows, 1 column) is created by merging subject_train and subject_test using rbind() function
  Merged_Data (10299 rows, 563 column) is created by merging Subject, y and x using cbgind() function
  
## Step Four

Extracts only the measurements on the mean and standard deviation for each measurement.
  TidyData (10299 rows, and 88 columns) is created by subsetting Merged_Data, selecting only columns: subject, code and the measurements on    the mean and standard deviation (std) for each measurement

## Step Five

Uses descriptive activity names to name the activities in the data set
  Entire numbers in code column of the TidyData replaced with corresponding activity taken from second column of the activities variable

## Step Six

Appropriately labels the data set with descriptive variable names
  Code column in TidyData renamed into activities
  All Acc in column's name replaced by Accelerometer
  All Gyro in column's name replaced by Gyroscope
  All BodyBody in column's name replaced by Body
  All Mag in column's name replaced by Magnitude
  All start with character f in column's name replaced by Frequency
  All start with character t in column's name replaced by Time
  
## Step Seven

From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
  FinalData (180 rows, 88 columns) is created by sumarizing TidyData taking the means of each variable for each activity and each subject,     after groupped by subject and activity.
  Export FinalData into FinalData.txt file.
  
