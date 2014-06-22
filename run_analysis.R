## read in dataset
x.train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y.train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject.train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x.test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y.test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject.test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## merge dataset
X <- rbind(x.train, x.test)
y <- rbind(y.train, y.test)
subject <- rbind(subject.train, subject.test)

## extract only mean and std
col.index <- c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543)
X <- X[,col.index]

## variable names for X
type.name <- c("tBodyAcc-Mean","tBodyAcc-Std","tGravityAcc-Mean","tGravityAcc-Std","tBodyAccJerk-Mean","tBodyAccJerk-Std",
               "tBodyGyro-Mean","tBodyGyro-Std","tBodyGyroJerk-Mean","tBodyGyroJerk-Std")
type.name <- paste(rep(type.name, each=3), c("-X","-Y","-Z"), sep="")
temp <-c("tBodyAccMag","tGravityAccMag","tBodyAccJerkMag","tBodyGyroMag","tBodyGyroJerkMag")
temp <- paste(rep(temp, each=2), c("-Mean","-Std"), sep="")
type.name <- c(type.name, temp)
temp <- c("fBodyAcc","fBodyAccJerk","fBodyGyro")
temp <- paste(rep(temp, each=6), rep(c("-Mean","-Std"), each=3),sep="")
temp <- paste(temp, c("X","Y","Z"), sep="-")
type.name <- c(type.name, temp)
temp <- c("fBodyAccMag","fBodyBodyAccJerkMag","fBodyBodyGyroMag","fBodyBodyGyroJerkMag")
temp <- paste(rep(temp, each=2), c("-Mean","-Std"), sep="")
type.name <- c(type.name, temp)
type.name
names(X) <- type.name

## label names of y
y[y==1] <- "Walking"
y[y==2] <- "Walking-upstairs"
y[y==3] <- "Walking-downstairs"
y[y==4] <- "Sitting"
y[y==5] <- "Standing"
y[y==6] <- "Laying"
y$V1 <- as.factor(y$V1)
names(y) <- c("Activity")
head(y)

## factorize subject
subject$V1 <-as.factor(subject$V1)
names(subject) <- c("Subject")
head(subject)

## merge X, y, subject into a big tidy dataset
AcitivityRecogn <- cbind(X, subject, y)
names(AcitivityRecogn)

## save to file
write.table(AcitivityRecogn, "AcitivityRecogn.txt", sep="\t")

## try read in the file
mydata <- read.table("./AcitivityRecogn.txt", header=TRUE)

## averages of each variable for each activity and each subject
data_statistics <- by(mydata[,1:66], mydata[,67:68], function(x) sapply(1:66, function(i) mean(x[,i])))
data_statistics <- data.frame(do.call(rbind,data_statistics))
names(data_statistics) <- paste("Avg_of_", type.name, sep="")
data_statistics <- cbind(data_statistics, Subject = rep(1:30,6), Activity = rep(levels(mydata$Activity),each=30))
head(data_statistics)

## save to file
write.table(data_statistics, "Avg_Of_AcitivityRecogn.txt", sep="\t")

## try read in the file
mystatistics <- read.table("./Avg_Of_AcitivityRecogn.txt", header=TRUE)
