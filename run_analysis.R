setwd("C:/Users/smashao001/Desktop/Data & analytics/Getting and cleaning data/Project Assignment")

library(dplyr)
library(data.table)
library(tidyr)

Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(Url, "paData.zip")

#unzip file
unzip("paData.zip", exdir = "paData")

#check files
list.files("paData")

filePath <- file.path("./paData" , "UCI HAR Dataset")
files<-list.files(filePath, recursive=TRUE)
files
setwd(filePath)

features      <- read.table("./features.txt",header=F)
activityLabel <- read.table("./activity_labels.txt",header=F)
subjectTrain  <-read.table("./train/subject_train.txt", header=F)
xTrain        <- read.table("./train/X_train.txt", header=F)
yTrain        <- read.table("./train/y_train.txt", header=F)
