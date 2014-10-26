**Brief discription of the data:**   
        30 volunteers aged between 19-48 years performed six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. A smartphone (Samsung Galaxy S II) on the waist allowed the captured of 3-axial linear accelerations and 3-axial angular velocities.

The original sensor signals obtained were pre-processed, normalised and bounded within [-1,1]. For a more detailed description on how the original signals were processed see the "features_info.txt" and "README.txt" files included in the original downloaded.

=======================================================
        
The tidy data generated contains 68 variables and 30 rows (same as the number of persons included in the study). Multiple measurements per subject and activity were reduced to its average.

**Variables included in the tidy data are:**  
        * subject   
* activity   
* Mean and Standard Deviation     
* (2 x 3 = 6 columns) - tBodyAcc-meanORstd-XYZ: body linear acceleration signals from the 3-axial directions   
* (2 x 3) - tGravityAcc-meanORstd-XYZ: gravity acceleration signals from the 3-axial directions   
* (2 x 3) - tBodyAccJerk-meanORstd-XYZ: Jerk signals derived from body linear accelerations   
* (2 x 3) - tBodyGyro-meanORstd-XYZ: body angular velocity from the 3-axial directions   
* (2 x 3) - tBodyGyroJerk-meanORstd-XYZ: Jerk signals derived from body angular velocities   
* (2 columns) - tBodyAccMag-meanORstd: Magnitude of the body linear acceleration   
* (2) - tGravityAccMag-meanORstd: Magnitude of the gravity acceleration signals   
* (2) - tBodyAccJerkMag-meanORstd: Magnitude of the jerk signals derived from body linear accelerations   
* (2) - tBodyGyroMag-meanORstd: Magnitude of the body angular velocities   
* (2) - tBodyGyroJerkMag-meanORstd: Magnitude of the jerk signals derived from body angular velocities   
* (2) - fBodyAcc-meanORstd-XYZ: body linear acceleration signals from the 3-axial directions   
* (2 x 3) - fBodyAccJerk-meanORstd-XYZ: Jerk signals derived from body linear accelerations   
* (2 x 3) - fBodyGyro-meanORstd-XYZ: body angular velocity from the 3-axial directions   
* (2) - fBodyAccMag-meanORstd: Magnitude of the body linear acceleration   
* (2) - fBodyAccJerkMag-meanORstd: Magnitude of the jerk signals derived from body linear accelerations   
* (2) - fBodyGyroMag-meanORstd: Magnitude of the body angular velocities   
* (2) - tBodyGyroJerkMag-meanORstd: Magnitude of the jerk signals derived from body angular velocities   

NOTE: Some variables have a proceding f (and not t) to denote that the original time signals were Fast Fourier Transformed into frequencies