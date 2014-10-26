**WHAT**   
Generate a tidy data from the Human Activity Recognition Using Smartphones Dataset obtained at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

**HOW**   
In R run:    
> source(run_analysis.R)    

NOTE: Make sure you have downloaded the data (see the link above) and that your working directory is ./UCI HAR Dataset

**The script**    
The "run_analysis.md" script performs the following steps in order to obtain the tidy data:    
* Create a function to read multiple files    
* Using the function created above, subjects, activities and variables that are divided between the train and the test data are load into R   
* Read the descriptive variable names from file "features.txt" and assign them as column names of the data.frame containing the variables    
* Using the assigned column names, select only those columns that contain the variables mean and standard deviation    
* Replace the 1 to 6 activity numbers in the activities object by its' descriptive activity names    
* Split the data.frame per each combination of subject and activity    
* Per each sample and activity combination compute the average of each variable    
* Add subject and activity information to the data.frame using the rownames    
* And finally write the tidy data produced to a file named "tidyData.txt"  

=======================================================

