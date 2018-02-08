###############################################################################################################################################
##########################################Getting and Cleaning Data Course Project#############################################################
###############################################################################################################################################


##Load necessary libraries 

library(data.table)

library(dplyr)

library(tidyr)

##Set working directory

setwd("/data/Stata/francisco_data/coursera/UCI HAR Dataset")

####READ FEATURE FILE

features<-fread("features.txt")

##Select only names and transpose vector
##I.e. This vector will be used to rename the train and test data sets

features<- features %>% 
           select(V2)

names<-t(features)

##Clean variable names
names<-gsub("-","",names)

##########################################################TREAT TRAIN FILES#####################################################################

##Read subject data 

subject_train<-fread("./train/subject_train.txt")

##Read the train data set

X_train<-fread("./train/X_train.txt")

##Rename properly the train data set using the transposed and cleaned feature file

colnames(X_train)<-names

##Read the Y_train file containing the activity code 

Y_train<-fread("./train/y_train.txt")

##Create complete data set for train observations

train_data<-subject_train %>%
            rename(subject=V1) %>%
            mutate(test_label=Y_train$V1)

##Merge entire train data set columns

train_data<-cbind(train_data,X_train)

##Subset only, subject, test_label, mean and sd columns

## Find the possition of the columns
names_position_train<-grep("subject|test_label|mean()|std()",names(train_data))

##Subset data set using vector with possition of the string names that we are looking for.

train_data<-train_data[names_position_train]


############################################TREAT TEST FILES############################################################################################## 

##Read subject data 

subject_test<-fread("./test/subject_test.txt")

##Read the test data set

X_test<-fread("./test/X_test.txt")

##Rename properly the test data set using the transposed and cleaned feature file

colnames(X_test)<-names

##Read the Y_test file containing the activity code 

Y_test<-fread("./test/y_test.txt")

##Create complete data set for test observations

test_data<-subject_test %>%
           rename(subject=V1) %>%
           mutate(test_label=Y_test$V1)

##Merge all test data set columns

test_data<-cbind(test_data,X_test)

##Subset only, subject, test_label, mean and sd columns

## Find the possition of the columns
names_position_test<-grep("subject|test_label|mean()|std()",names(test_data))

##Subset data set using vector with possition of the string names that we are looking for.
test_data<-test_data[names_position_test]


##############################Append train and test data frames with mean and sd information###################################################

###Read activity label data

activity_labels<-fread("./activity_labels.txt")

activity_labels_names<-c("test_label","activity_name")

colnames(activity_labels)<-activity_labels_names

###Append cleaned test and train data

final_frame<-rbind(test_data,train_data)

###Merge activity labels with final data frame

final_frame<-merge(activity_labels,final_frame,by.x = "test_label",by.y = "test_label",all.y = TRUE) 

###Drop label column

final_frame<-final_frame[,-1]

#############################Creates independent tidy data set with the average of each variable for each activity and each subject##########

##Group by subject and activity name and apply mean to all variables

average_final_frame<-final_frame %>% 
                     group_by(activity_name,subject) %>% 
                     summarise_all(funs(mean)) %>%
                     arrange((subject))



###Save tidy data set

fwrite(average_final_frame,"tidy_data_set.txt")
     