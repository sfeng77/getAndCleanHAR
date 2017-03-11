getAndLabel <- function(){
    df <- rbind( read.table("UCI HAR Dataset/train/X_train.txt"), read.table("UCI HAR Dataset/test/X_test.txt"))

    feature.name <-  read.table("UCI HAR Dataset/features.txt")
    colnames(df) <- feature.name$V2

    select <- (grepl("mean", feature.name$V2) | grepl("std", feature.name$V2)) & !grepl("meanFreq", feature.name$V2) 
    df1 <- df[,select]

    activity.name <- read.table("UCI HAR Dataset/activity_labels.txt")    
    activity = rbind(read.table("UCI HAR Dataset/train/y_train.txt"),  read.table("UCI HAR Dataset/test/y_test.txt"))
    subjects = rbind(read.table("UCI HAR Dataset/train/subject_train.txt"), read.table("UCI HAR Dataset/test/subject_test.txt"))
    
    df1$Activity.name <- activity.name$V2[unlist(activity)]
    df1$Subject <- as.factor(subjects$V1)
    df1
}

average_data <- function(df){
    dat <- subset(df, select = -c(Subject, Activity.name))
    df2 <- aggregate(dat, by = list(Subject = df$Subject, Activity = df$Activity.name), FUN = "mean")
    df2
}

run_analysis <- function(){
    df <- getAndLabel()
    df2 <- average_data(df)
    write.table(df2,"tidyDataset.txt", row.names = FALSE)
}