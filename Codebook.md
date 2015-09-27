---
title: "Codebook"
author: "Farahshih"
date: "September 25, 2015"
---

## Experimental design and background: 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Raw data
The dataset includes the following files:
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt' and 'test/subject_test.txt':
Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

## Processed data
Activities labels:
Activities labels were converted to factor.
"1"="Walk","2"="Walk_up", "3"="Walk_down","4"="Sit", "5"="Stand","6"="Laying"
(** Walk_up = Walking upstairs, Walk_down = Walking downstairs)

Features names: 
-abbreviation explanation: 
'Acc' denotes accelerometer ; 'Gyro' denotes gyroscope ; 'Time' denotes time domain signals ; 'Mag' denotes magnitude ; 'Jerk' denotes Jerk signals ; 'Freq' denotes frequency domain signals 
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The final tidy dataset 'tidy_data' shows the average of each variable(features) for each activity and each subject.