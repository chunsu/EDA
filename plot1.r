analysis_plot(){

##Dates that are in the form %Y-%m-%d or Y/%m/%d will import correctly

#setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") )
#setAs("character","myTime", function(from) as.POSIXlt(from, format="%H:%M:%S") )
#data <- read.table("household_power_consumption.txt", colClasses=c('myDate',''), header=FALSE)




##
## https://stackoverflow.com/questions/24090768/importing-only-rows-matching-specific-values

Lines <- readLines("household_power_consumption.txt")
subL <- grep("^[12]/2/2007", substr(Lines, 1,8) )# a numeric vector
subdata <- read.table(text=Lines[subL], header = FALSE, sep= ";")


##
## https://stackoverflow.com/questions/35794140/reading-time-from-csv-file-in-r
library(lubridate)

subdata$date_time <- paste(subdata$V1, subdata$V2)
subdata$date_time <- dmy_hms(subdata$date_time)
subdata[1:2] <- list(NULL)

names(subdata)[1:7] <- c('Global_active_power','Global_reactive_power','Voltage','Global_intensity','Sub_metering_1','Sub_metering_2','Sub_metering_3')
## task 1
## Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
## Your code file should include code for reading the data so that the plot can be fully reproduced. You must also include the code that creates the PNG file

png("Plot 1.png")
hist(subdata$Global_active_power, col= "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
dev.off() 

}