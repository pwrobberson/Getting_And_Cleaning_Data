# Getting_And_Cleaning_Data
Repo for submission of Data Coursera Project

**Summary**
-------

The script, "run_analysis.R", combines several files into a single data set and computes the mean for each measurement that corresponds to a "mean" or "std" column.  The measurements are made from triaxial (x, y, z) raw sensor signal data from an accelerometer and gyroscope in a Samsung Galaxy X II smartphone.  The data was captured for each of 30 volunteers (subjects) as they performed six activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying.  The result is 180 mean observations (30 x 6) for 86 variables. 

**Summary of R Script**
-------------------

 1. The files are read into tables.
 2. The Subjects (identified by a number, 1 through 30) and the Activities (1 through 6) are in separate files and must be   bound as columns to the measurement data.
 3. This is done for each of the test and train files.
 4. The features are in a separate file and must be bound as column names.  Some names are duplicate, so the names are first  made unique.
 5. Readable acitivity names are substitued for each of the acitivity numbers.
 6. Only the measurement columns containing either "mean" or "std" are selected.
 7. The rows are grouped first by Subject, then by Activity, and and the mean of each column is calculated.
 8. The resulting table is written out as a text file, "gseldat.txt".

The R script is also annotated.

**CODE BOOK**
---------

**SUBJECT**
       
       1, 2, 3, ... through 30
       
**ACTIVITY**

       1 WALKING
       2 WALKING_UPSTAIRS
       3 WALKING_DOWNSTAIRS
       4 SITTING
       5 STANDING
       6 LAYING

**TRIAXIAL MEASUREMENTS**

      tBodyAcc.mean...X      
      tBodyAcc.mean...Y      
      tBodyAcc.mean...Z      
      tBodyAcc.std...X      
      tBodyAcc.std...Y      
      tBodyAcc.std...Z      
      tGravityAcc.mean...X      
      tGravityAcc.mean...Y      
      tGravityAcc.mean...Z      
      tGravityAcc.std...X      
      tGravityAcc.std...Y      
      tGravityAcc.std...Z      
      tBodyAccJerk.mean...X      
      tBodyAccJerk.mean...Y      
      tBodyAccJerk.mean...Z      
      tBodyAccJerk.std...X      
      tBodyAccJerk.std...Y      
      tBodyAccJerk.std...Z      
      tBodyGyro.mean...X      
      tBodyGyro.mean...Y      
      tBodyGyro.mean...Z      
      tBodyGyro.std...X      
      tBodyGyro.std...Y      
      tBodyGyro.std...Z      
      tBodyGyroJerk.mean...X      
      tBodyGyroJerk.mean...Y      
      tBodyGyroJerk.mean...Z      
      tBodyGyroJerk.std...X      
      tBodyGyroJerk.std...Y      
      tBodyGyroJerk.std...Z      
      tBodyAccMag.mean..      
      tBodyAccMag.std..      
      tGravityAccMag.mean..      
      tGravityAccMag.std..      
      tBodyAccJerkMag.mean..      
      tBodyAccJerkMag.std..      
      tBodyGyroMag.mean..      
      tBodyGyroMag.std..      
      tBodyGyroJerkMag.mean..      
      tBodyGyroJerkMag.std..      
      fBodyAcc.mean...X      
      fBodyAcc.mean...Y      
      fBodyAcc.mean...Z      
      fBodyAcc.std...X      
      fBodyAcc.std...Y      
      fBodyAcc.std...Z      
      fBodyAcc.meanFreq...X      
      fBodyAcc.meanFreq...Y      
      fBodyAcc.meanFreq...Z      
      fBodyAccJerk.mean...X      
      fBodyAccJerk.mean...Y      
      fBodyAccJerk.mean...Z      
      fBodyAccJerk.std...X      
      fBodyAccJerk.std...Y      
      fBodyAccJerk.std...Z      
      fBodyAccJerk.meanFreq...X      
      fBodyAccJerk.meanFreq...Y      
      fBodyAccJerk.meanFreq...Z      
      fBodyGyro.mean...X      
      fBodyGyro.mean...Y      
      fBodyGyro.mean...Z      
      fBodyGyro.std...X      
      fBodyGyro.std...Y      
      fBodyGyro.std...Z      
      fBodyGyro.meanFreq...X      
      fBodyGyro.meanFreq...Y      
      fBodyGyro.meanFreq...Z      
      fBodyAccMag.mean..      
      fBodyAccMag.std..      
      fBodyAccMag.meanFreq..      
      fBodyBodyAccJerkMag.mean..      
      fBodyBodyAccJerkMag.std..      
      fBodyBodyAccJerkMag.meanFreq..      
      fBodyBodyGyroMag.mean..      
      fBodyBodyGyroMag.std..      
      fBodyBodyGyroMag.meanFreq..      
      fBodyBodyGyroJerkMag.mean..      
      fBodyBodyGyroJerkMag.std..      
      fBodyBodyGyroJerkMag.meanFreq..      
      angle.tBodyAccMean.gravity.      
      angle.tBodyAccJerkMean..gravityMean.      
      angle.tBodyGyroMean.gravityMean.      
      angle.tBodyGyroJerkMean.gravityMean.      
      angle.X.gravityMean.      
      angle.Y.gravityMean.      
      angle.Z.gravityMean.      
