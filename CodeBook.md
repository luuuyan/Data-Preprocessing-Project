CodeBook
========================================================

AcitivityRecogn.txt
---------------------------

AcitivityRecogn.txt contains a tidy dataset of **means** and **stds** of measurements extracted from **Human Activity Recognition Using Smartphones dataset**, which is available from **https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip**. More information of the original dataset can be found at **http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones**.

There are **10299** observations in total. The **1-7352th** observations are the training data, while the **7353-10299th** observations are the test data.

The dataset contains **68** variables. The **1-66th** variables are **means** and **stds** of measurements extracted from **x.train** and **x.test**. These are all **numeric** variables. 

The **67th** variable is the **subject** extracted from **subject.train** and **subject.test**, which is an **integer** variable. 

The **68th** variable is the **Activity** variable extracted from **y.train** and **y.test**. It is a **factor** variable with **6** levels.

The name of the variables are:


```
##  [1] "tBodyAcc-Mean-X"           "tBodyAcc-Mean-Y"          
##  [3] "tBodyAcc-Mean-Z"           "tBodyAcc-Std-X"           
##  [5] "tBodyAcc-Std-Y"            "tBodyAcc-Std-Z"           
##  [7] "tGravityAcc-Mean-X"        "tGravityAcc-Mean-Y"       
##  [9] "tGravityAcc-Mean-Z"        "tGravityAcc-Std-X"        
## [11] "tGravityAcc-Std-Y"         "tGravityAcc-Std-Z"        
## [13] "tBodyAccJerk-Mean-X"       "tBodyAccJerk-Mean-Y"      
## [15] "tBodyAccJerk-Mean-Z"       "tBodyAccJerk-Std-X"       
## [17] "tBodyAccJerk-Std-Y"        "tBodyAccJerk-Std-Z"       
## [19] "tBodyGyro-Mean-X"          "tBodyGyro-Mean-Y"         
## [21] "tBodyGyro-Mean-Z"          "tBodyGyro-Std-X"          
## [23] "tBodyGyro-Std-Y"           "tBodyGyro-Std-Z"          
## [25] "tBodyGyroJerk-Mean-X"      "tBodyGyroJerk-Mean-Y"     
## [27] "tBodyGyroJerk-Mean-Z"      "tBodyGyroJerk-Std-X"      
## [29] "tBodyGyroJerk-Std-Y"       "tBodyGyroJerk-Std-Z"      
## [31] "tBodyAccMag-Mean"          "tBodyAccMag-Std"          
## [33] "tGravityAccMag-Mean"       "tGravityAccMag-Std"       
## [35] "tBodyAccJerkMag-Mean"      "tBodyAccJerkMag-Std"      
## [37] "tBodyGyroMag-Mean"         "tBodyGyroMag-Std"         
## [39] "tBodyGyroJerkMag-Mean"     "tBodyGyroJerkMag-Std"     
## [41] "fBodyAcc-Mean-X"           "fBodyAcc-Mean-Y"          
## [43] "fBodyAcc-Mean-Z"           "fBodyAcc-Std-X"           
## [45] "fBodyAcc-Std-Y"            "fBodyAcc-Std-Z"           
## [47] "fBodyAccJerk-Mean-X"       "fBodyAccJerk-Mean-Y"      
## [49] "fBodyAccJerk-Mean-Z"       "fBodyAccJerk-Std-X"       
## [51] "fBodyAccJerk-Std-Y"        "fBodyAccJerk-Std-Z"       
## [53] "fBodyGyro-Mean-X"          "fBodyGyro-Mean-Y"         
## [55] "fBodyGyro-Mean-Z"          "fBodyGyro-Std-X"          
## [57] "fBodyGyro-Std-Y"           "fBodyGyro-Std-Z"          
## [59] "fBodyAccMag-Mean"          "fBodyAccMag-Std"          
## [61] "fBodyBodyAccJerkMag-Mean"  "fBodyBodyAccJerkMag-Std"  
## [63] "fBodyBodyGyroMag-Mean"     "fBodyBodyGyroMag-Std"     
## [65] "fBodyBodyGyroJerkMag-Mean" "fBodyBodyGyroJerkMag-Std" 
## [67] "Subject"                   "Activity"
```

Note: when **AcitivityRecogn.txt** is loaded, the **-** in the variable names may become **.** due to system issue.

The levels of **Activity** is:


```r
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
```

The data can be loaded using the following command:


```r
mydata <- read.table("./AcitivityRecogn.txt", header=TRUE)
```


Avg_Of_AcitivityRecogn.txt
---------------------------

Avg_Of_AcitivityRecogn.txt contains a tidy dataset of **average** of **means** and **stds** of measurements extracted from **AcitivityRecogn dataset**.

There are **180** observations in total. Each observation corresponds to the average of each variable for each activity and each subject.

The dataset contains **68** variables. The **1-66th** variables are **average** of **means** and **stds** of measurements. These are all **numeric** variables. 

The **67th** variable is the **subject** varies from **1 to 30**, which is an **integer** variable. 

The **68th** variable is the **Activity** variable. It is a **factor** variable with **6** levels.

The name of the variables are:


```
##  [1] "Avg_Of_tBodyAcc-Mean-X"       "Avg_Of_tBodyAcc-Mean-Y"      
##  [3] "Avg_Of_tBodyAcc-Mean-Z"       "Avg_Of_tBodyAcc-Std-X"       
##  [5] "Avg_Of_tBodyAcc-Std-Y"        "Avg_Of_tBodyAcc-Std-Z"       
##  [7] "Avg_Of_tGravityAcc-Mean-X"    "Avg_Of_tGravityAcc-Mean-Y"   
##  [9] "Avg_Of_tGravityAcc-Mean-Z"    "Avg_Of_tGravityAcc-Std-X"    
## [11] "Avg_Of_tGravityAcc-Std-Y"     "Avg_Of_tGravityAcc-Std-Z"    
## [13] "Avg_Of_tBodyAccJerk-Mean-X"   "Avg_Of_tBodyAccJerk-Mean-Y"  
## [15] "Avg_Of_tBodyAccJerk-Mean-Z"   "Avg_Of_tBodyAccJerk-Std-X"   
## [17] "Avg_Of_tBodyAccJerk-Std-Y"    "Avg_Of_tBodyAccJerk-Std-Z"   
## [19] "Avg_Of_tBodyGyro-Mean-X"      "Avg_Of_tBodyGyro-Mean-Y"     
## [21] "Avg_Of_tBodyGyro-Mean-Z"      "Avg_Of_tBodyGyro-Std-X"      
## [23] "Avg_Of_tBodyGyro-Std-Y"       "Avg_Of_tBodyGyro-Std-Z"      
## [25] "Avg_Of_tBodyGyroJerk-Mean-X"  "Avg_Of_tBodyGyroJerk-Mean-Y" 
## [27] "Avg_Of_tBodyGyroJerk-Mean-Z"  "Avg_Of_tBodyGyroJerk-Std-X"  
## [29] "Avg_Of_tBodyGyroJerk-Std-Y"   "Avg_Of_tBodyGyroJerk-Std-Z"  
## [31] "Avg_Of_tBodyAccMag-Mean"      "Avg_Of_tBodyAccMag-Std"      
## [33] "Avg_Of_tGravityAccMag-Mean"   "Avg_Of_tGravityAccMag-Std"   
## [35] "Avg_Of_tBodyAccJerkMag-Mean"  "Avg_Of_tBodyAccJerkMag-Std"  
## [37] "Avg_Of_tBodyGyroMag-Mean"     "Avg_Of_tBodyGyroMag-Std"     
## [39] "Avg_Of_tBodyGyroJerkMag-Mean" "Avg_Of_tBodyGyroJerkMag-Std" 
## [41] "Avg_Of_fBodyAcc-Mean-X"       "Avg_Of_fBodyAcc-Mean-Y"      
## [43] "Avg_Of_fBodyAcc-Mean-Z"       "Avg_Of_fBodyAcc-Std-X"       
## [45] "Avg_Of_fBodyAcc-Std-Y"        "Avg_Of_fBodyAcc-Std-Z"       
## [47] "Avg_Of_fBodyAccJerk-Mean-X"   "Avg_Of_fBodyAccJerk-Mean-Y"  
## [49] "Avg_Of_fBodyAccJerk-Mean-Z"   "Avg_Of_fBodyAccJerk-Std-X"   
## [51] "Avg_Of_fBodyAccJerk-Std-Y"    "Avg_Of_fBodyAccJerk-Std-Z"   
## [53] "Avg_Of_fBodyGyro-Mean-X"      "Avg_Of_fBodyGyro-Mean-Y"     
## [55] "Avg_Of_fBodyGyro-Mean-Z"      "Avg_Of_fBodyGyro-Std-X"      
## [57] "Avg_Of_fBodyGyro-Std-Y"       "Avg_Of_fBodyGyro-Std-Z"      
## [59] "fBodyAccMag-Mean"             "fBodyAccMag-Std"             
## [61] "fBodyBodyAccJerkMag-Mean"     "fBodyBodyAccJerkMag-Std"     
## [63] "fBodyBodyGyroMag-Mean"        "fBodyBodyGyroMag-Std"        
## [65] "fBodyBodyGyroJerkMag-Mean"    "fBodyBodyGyroJerkMag-Std"    
## [67] "Subject"                      "Activity"
```

Note: when **Avg_Of_AcitivityRecogn.txt** is loaded, the **-** in the variable names may become **.** due to system issue. But the **_** will not.

The levels of **Activity** is:


```r
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
```

The data can be loaded using the following command:


```r
mystatistics <- read.table("./Avg_Of_AcitivityRecogn.txt", header=TRUE)
```
