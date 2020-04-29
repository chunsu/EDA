plot4<- function(){

	png("Plot 4.png")
	par(mfrow(2,2))
	## topleft
	with(subdata, plot(date_time, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))
	## bottomleft
	with(subdata, plot(date_time, Sub_metering_1, type = 'n', ylab = "Energy sub metering", xlab =""))
	with(subdata, points(date_time, Sub_metering_1, type = "l", col = "black"))
	with(subdata, points(date_time, Sub_metering_2, type = "l", col = "red"))
    with(subdata, points(date_time, Sub_metering_3, type = "l", col = "blue"))
	legend("topright", col = c("black","red","blue"), lty = c(1, 1, 1),legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
	## topright
	with(subdata, plot(date_time, Voltage, type = "l", xlab = "datetime"))
	## bottomleft
	with(subdata, plot(date_time, Global_reactive_power, type = "l", xlab = "datetime"))
	dev.off() 
	
｝
