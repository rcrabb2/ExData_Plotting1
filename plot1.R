plot1 <- function (){
  #Initialize and get the data
  source("initializeDataSet.R")
  data1 <- initializeDataSet()
  
  #Create an empty plot
  png(filename="plot1.png",width=480,height=480)
  
  #Fill it in
  hist(data1$Global_active_power, main='Global Active Power', xlab="Global Active Power (kilowatts)"
       ,ylab="Frequency",xlim=c(0,6),ylim=c(0,1200),col="red")
  dev.off()
}
