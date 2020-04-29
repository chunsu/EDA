plot2<- function(){

	png("Plot 2.png")
	with(subdata, plot(date_time, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))
	dev.off() 

}
