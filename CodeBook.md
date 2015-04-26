---
title: "CodeBook"
author: "Marten Witkamp"
date: "Sunday, April 26, 2015"
output: html_document
---

## File
By running the run_analysis.R script (see README.md), you create a file called "tidy_data_MW.txt" in your working directory. This codebook describes the content of that text file.  

## Variables
This "tidy_data_MW.txt" file has 4 variables and 15,480 observations.

* subject: a unique identifier for each of the 30 participating subjects
* activity: one out of 6 possible activities that were carried out by the subjects
* measurement: one out of 86 possible indicators for which data was gathered by the smartphone of the indicated subject carrying out the indicated activity.  
* mean_values: the mean of all the measurements of a particular indicator belonging to the same activity carried out by the same person

Each observation describes the mean of the measurements of one indicator (named in the measurement variable) for one activity (named in the activity variable) carried out by one person (designated in the subject variable).

### Variable 1: subject
Integer [1:30]

### Variable 2: activity
Factor w/ 6 levels
* WALKING            
* WALKING_UPSTAIRS   
* WALKING_DOWNSTAIRS 
* SITTING           
* STANDING
* LAYING         

### Variable 3:measurement
Factor w/ 86 levels
N.B. These names were adopted from the source files and unchanged. Please refer to the "features_info.txt" in the source file for a more detailed description of what these indicators mean.
*  tBodyAcc-mean()-X                    
*  tBodyAcc-mean()-Y                   
*  tBodyAcc-mean()-Z                    
*  tBodyAcc-std()-X                    
*  tBodyAcc-std()-Y                     
*  tBodyAcc-std()-Z                    
*  tGravityAcc-mean()-X                 
*  tGravityAcc-mean()-Y                
*  tGravityAcc-mean()-Z                 
*  tGravityAcc-std()-X                 
*  tGravityAcc-std()-Y                  
*  tGravityAcc-std()-Z                 
*  tBodyAccJerk-mean()-X                
*  tBodyAccJerk-mean()-Y               
*  tBodyAccJerk-mean()-Z                
*  tBodyAccJerk-std()-X                
*  tBodyAccJerk-std()-Y                 
*  tBodyAccJerk-std()-Z                
*  tBodyGyro-mean()-X                   
*  tBodyGyro-mean()-Y                  
*  tBodyGyro-mean()-Z                   
*  tBodyGyro-std()-X                   
*  tBodyGyro-std()-Y                    
*  tBodyGyro-std()-Z                   
*  tBodyGyroJerk-mean()-X               
*  tBodyGyroJerk-mean()-Y              
*  tBodyGyroJerk-mean()-Z               
*  tBodyGyroJerk-std()-X               
*  tBodyGyroJerk-std()-Y                
*  tBodyGyroJerk-std()-Z               
*  tBodyAccMag-mean()                   
*  tBodyAccMag-std()                   
*  tGravityAccMag-mean()                
*  tGravityAccMag-std()                
*  tBodyAccJerkMag-mean()               
*  tBodyAccJerkMag-std()               
*  tBodyGyroMag-mean()                  
*  tBodyGyroMag-std()                  
*  tBodyGyroJerkMag-mean()              
*  tBodyGyroJerkMag-std()              
*  fBodyAcc-mean()-X                    
*  fBodyAcc-mean()-Y                   
*  fBodyAcc-mean()-Z                    
*  fBodyAcc-std()-X                    
*  fBodyAcc-std()-Y                     
*  fBodyAcc-std()-Z                    
*  fBodyAcc-meanFreq()-X                
*  fBodyAcc-meanFreq()-Y               
*  fBodyAcc-meanFreq()-Z                
*  fBodyAccJerk-mean()-X               
*  fBodyAccJerk-mean()-Y                
*  fBodyAccJerk-mean()-Z               
*  fBodyAccJerk-std()-X                 
*  fBodyAccJerk-std()-Y                
*  fBodyAccJerk-std()-Z                 
*  fBodyAccJerk-meanFreq()-X           
*  fBodyAccJerk-meanFreq()-Y            
*  fBodyAccJerk-meanFreq()-Z           
*  fBodyGyro-mean()-X                   
*  fBodyGyro-mean()-Y                  
*  fBodyGyro-mean()-Z                   
*  fBodyGyro-std()-X                   
*  fBodyGyro-std()-Y                    
*  fBodyGyro-std()-Z                   
*  fBodyGyro-meanFreq()-X               
*  fBodyGyro-meanFreq()-Y              
*  fBodyGyro-meanFreq()-Z               
*  fBodyAccMag-mean()                  
*  fBodyAccMag-std()                    
*  fBodyAccMag-meanFreq()              
*  fBodyBodyAccJerkMag-mean()           
*  fBodyBodyAccJerkMag-std()           
*  fBodyBodyAccJerkMag-meanFreq()       
*  fBodyBodyGyroMag-mean()             
*  fBodyBodyGyroMag-std()               
*  fBodyBodyGyroMag-meanFreq()         
*  fBodyBodyGyroJerkMag-mean()          
*  fBodyBodyGyroJerkMag-std()          
*  fBodyBodyGyroJerkMag-meanFreq()      
*  angle(tBodyAccMean,gravity)         
*  angle(tBodyAccJerkMean),gravityMean) 
*  angle(tBodyGyroMean,gravityMean)    
*  angle(tBodyGyroJerkMean,gravityMean) 
*  angle(X,gravityMean)                
*  angle(Y,gravityMean)                 
*  angle(Z,gravityMean)   

### Variable 4: mean_values
Numeric value (mean calculated from a series of normalized [-1:1] values)
