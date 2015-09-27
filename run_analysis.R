setwd("C:\\Code\\Coursera_DS\\03-Cleaning_Data\\UCI HAR Dataset")

### Task1: Merges the training and the test sets to create one data set.

# read activity_labels
act_name<-read.table("./activity_labels.txt")

# read files (personalID): subject_train.txt & subject_test.txt
subject_test<-read.table("./test/subject_test.txt")
subject_train<-read.table("./train/subject_train.txt")

# read the names of the features
features_name<-read.table("./features.txt")
features_name<-t(features_name$V2) # transpose features names to vectors

# read files (features value): x_train.txt & x_test.txt
X_test<-read.table("./test/X_test.txt",col.names = features_name, check.names = FALSE)
X_train<-read.table("./train/X_train.txt",col.names = features_name, check.names = FALSE)

# read files (Acticity ID): y_train.txt & y_test.txt
Y_test<-read.table("./test/y_test.txt")
Y_train<-read.table("./train/y_train.txt")

# Merges the taining and test data
features<-rbind(X_test,X_train)
activity<-rbind(Y_test,Y_train)
ID<-rbind(subject_test,subject_train)

# remove redundant datasets 
rm("X_test","X_train","Y_test","Y_train","subject_test","subject_train")


### Task2: Extracts only the measurements on the mean and std for each measurement
subset1 <- features[, grep("mean|std|Mean", names(features))]
names(subset1)[1:6]

# Merge 3 datasets (ID, features, Activity) into one dataset
full_set1<-cbind(ID, activity, subset1)

# change column names
colnames(full_set1)[c(1,2)]<-c("ID","Activity")
head(full_set1[1:6])


### Task3: Uses descriptive activity names to name the activities in the data set
full_set1$Activity<-as.factor(full_set1$Activity)
library(plyr)
full_set1$Activity<-revalue(full_set1$Activity,c("1"="Walk","2"="Walk_up",
                                                 "3"="Walk_down","4"="Sit",
                                                 "5"="Stand","6"="Laying"))

# check if the conversion of names is correct
table(activity)
table(full_set1$Activity)


### Task4: Appropriately labels the data set with descriptive variable names. 
# replace column names starting with "t" with "Time", start with "f" with 
# "Freq" (frequency domain signals)
names(full_set1)<-gsub("^t","Time_",names(full_set1))
names(full_set1)<-gsub("^f","Freq_",names(full_set1))


### Task 5: From the data set in step 4, creates a second, independent tidy data 
### set with the average of each variable for each activity and each subject.
library(dplyr)
tidy_data<-full_set1 %>% 
    group_by(ID, Activity) %>%
    summarise_each(funs(mean),c(3:88))
head(tidy_data)[1:6]

### Export tidy dataset to a txt file
write.table(tidy_data,file="AnalysisResult.txt",row.names = FALSE)
