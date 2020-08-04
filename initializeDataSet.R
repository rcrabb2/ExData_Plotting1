initializeDataSet <- function(){
  ##I like to put all of the R code/files into the R folder for easy use
  if(!dir.exists("./R"))
    dir.create("R")
  
  #This checks to see if the directory where the zip file is unloaded will be
  if(!dir.exists("C:/Users/Myself/Documents/R/household")){
    temp <- tempfile()
    print("House directory doesn't exist. Creating it now.")
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
    unzip(temp,exdir="./household")
  }
  
  #Since the file is in the household folder, the code goes there
  setwd("~/R/household")
  
  #Reading the full table
  data <- read.table("household_power_consumption.txt",header=TRUE, sep=";")
  
  #Subsetting the table to the 2 target dates
  data <- data[data$Date=="1/2/2007"| data$Date=="2/2/2007", ]
  
  #Make it numeric
  data[,c(3:9)] <- sapply(data[,c(3:9)],as.numeric)
  
  data
}