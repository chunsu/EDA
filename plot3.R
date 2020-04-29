plot3<- function(){

	png("Plot 3.png")
	with(subdata, plot(date_time, Sub_metering_1, type = 'n', ylab = "Energy sub metering", xlab =""))
	with(subdata, points(date_time, Sub_metering_1, type = "l", col = "black"))
	with(subdata, points(date_time, Sub_metering_2, type = "l", col = "red"))
    with(subdata, points(date_time, Sub_metering_3, type = "l", col = "blue"))
	legend("topright", col = c("black","red","blue"), lty = c(1, 1, 1),legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
	dev.off() 

}
