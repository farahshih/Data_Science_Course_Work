---
title: "README"
author: "Farahshih"
date: "September 25, 2015"
---

## Introduction
This is the README file for the Course project analysis result for the course: Coursera Data Science specailization - Getting and Claening Data  

## The Course project instruction
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## My analysis steps
1) 'X_train.txt' and 'X_test.txt' are merged into 'featrues' data frame
2) 'y_train.txt' and 'y_test.txt' are merged into 'activity' data frame
3) 'subject_train.txt' and 'subject_test.txt' are merged into 'ID' data frame
4) Extracted only the measurements that have 'mean' or 'Mean' or 'std' in their features names. ('subset1' data frame)
5) Activities labels were converted to factor.
"1"="Walk","2"="Walk_up", "3"="Walk_down","4"="Sit", "5"="Stand","6"="Laying"
(** Walk_up = Walking upstairs, Walk_down = Walking downstairs)
6) average each variable for each activity and each subject to a tidy dataset : 'tidy_data' data frame

