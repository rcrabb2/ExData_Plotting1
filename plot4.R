plot4 <- function(){
  #Initialize and get the data
  source("initializeDataSet.R")
  data4 <- initializeDataSet()
  
  #Time Field
  timeDate <- strptime(paste(data4$Date,data4$Time),format="%d/%m/%Y %H:%M:%S")
  
  png(filename="plot4.png",width=480,height=480)
  
  #Setting the parameter for 2x2 plots
  par(mfrow=c(2,2))
  
  with(data4, {
    #Plot1
    plot(timeDate,Global_active_power, type='l', xlab='', ylab='Global Active Power')
    
    #Plot 2
    plot(timeDate,Voltage,type='l')
    
    #Plot 3
    plot(timeDate,Sub_metering_1, type ="l", xlab="", ylab="Energy sub metering")
    lines(timeDate,Sub_metering_2, col='red')
    lines(timeDate, Sub_metering_3, col='blue')
    
    #Plot 3's Legend
    legend('topright',lwd=1, col=c('black','red','blue'), 
           legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
    
    #Plot 4
    plot(timeDate,Global_reactive_power,type='l')
  })
  
  dev.off()
}