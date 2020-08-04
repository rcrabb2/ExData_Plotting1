plot2 <- function (){
  #Initialize and get the data
  source("initializeDataSet.R")
  data2 <- initializeDataSet()
  
  #Time Field
  timeDate <- strptime(paste(data2$Date,data2$Time),format="%d/%m/%Y %H:%M:%S")
  
  #Make an empty plot
  png(filename="plot2.png",width=480,height=480)
  
  #Fill it in
  plot(timeDate,data2$Global_active_power,type="l",ylab="Global Active Power (kilowatts)", xlab="")
  dev.off()
  
}