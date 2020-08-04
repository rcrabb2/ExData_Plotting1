plot3 <- function (){
  #Initialize and get the data
  source("initializeDataSet.R")
  data3 <- initializeDataSet()
  
  #Time Field
  timeDate <- strptime(paste(data3$Date,data3$Time),format="%d/%m/%Y %H:%M:%S")
  
  #Make an empty plot
  png(filename="plot3.png",width=480,height=480)
  
  with(data3, {
    ## The Lines
    plot(timeDate,Sub_metering_1, type ="l", xlab="", ylab="Energy sub metering")
    lines(timeDate,Sub_metering_2, col='red')
    lines(timeDate, Sub_metering_3, col='blue')
    
    #The Legend
    legend('topright',lwd=1, col=c('black','red','blue'), 
           legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
  })
  
  dev.off()
}