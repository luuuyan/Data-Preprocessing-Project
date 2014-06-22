README
========================================================

Creator: Luyan Wu

Discription: project for Getting and Clearning Data course

Files
----------

This repository contains the following files:

### Documents: 

* README.html (Important)
* README.md (required)
* README.Rmd
* CodeBook.html (Important)
* CodeBook.md (required)
* CodeBook.Rmd

### Datasets:

* /UCI HAR Dataset (original dataset)
* ActivityRecogn.txt (tidy dataset containing means and stds)
* Avg_Of_ActivityRecogn.txt (tidy dataset containing average of means and stds)

### R file:

* run_analysis.R (all the R code for cleaning the data)

### Other non-relevant files:

* .DS_Store
* features copy.txt
* getdata-projectfiles-UCI HAR Dataset.zip


Instruction
-------------

Run **run_analysis.R**, it will create and save 2 datasets seperately in ActivityRecogn.txt and Avg_Of_ActivityRecogn.txt. The datasets can then be loaded using the following command in R:


```r
mydata <- read.table("./AcitivityRecogn.txt", header=TRUE)
mystatistics <- read.table("./Avg_Of_AcitivityRecogn.txt", header=TRUE)
```

Steps for data processing
--------

1. Merges the training and the test sets to create one data set. i.e. merge X.train and X.test to X, merge y.train and y.test to y, and merge subject.train and subject.test to subject
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
