getAndClean <- function(){
    traindata <- read.table("UCI HAR Dataset/train/X_train.txt")
    testdata <- read.table("UCI HAR Dataset/test/X_test.txt")
    activity.name <- read.table("UCI HAR Dataset/activity_labels.txt")
    feature.name <-  read.table("UCI HAR Dataset/features.txt")
    trainlabel <- read.table("UCI HAR Dataset/train/y_train.txt")
    testlabel <- read.table("UCI HAR Dataset/test/y_test.txt")
    
    df <- rbind(traindata, testdata)
    colnames(df) <- feature.name$V2
    select <- (grepl("mean", feature.name$V2) | grepl("std", feature.name$V2)) & !grepl("meanFreq", feature.name$V2)
    df1 <- df[,select]
    
    labels = rbind(trainlabel, testlabel)
    colnames(labels) <- c("Activity.label")
    df2 <- cbind(df1, labels)
    df2$Activity.name <- activity.name$V2[df2$Activity.label]
    
    df3 <- split(df2, df2$Activity.name)
    deselect = 
    df4 <- sapply(df3, function(x) colMeans(x[-c(ncol(x), ncol(x)-1)]))
    ncol(data)
    df4
    
}


getAndClean()