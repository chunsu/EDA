plot1<- function(){

## reading the data, only from the dates 2007-02-01 and 2007-02-02.
## I referenced the answer from the below webpage
## https://stackoverflow.com/questions/24090768/importing-only-rows-matching-specific-values

Lines <- readLines("household_power_consumption.txt")
subL <- grep("^[12]/2/2007", substr(Lines, 1,8) )# a numeric vector
subdata <- read.table(text=Lines[subL], header = FALSE, sep= ";")


## Using lubridate function dmy_hms to create a date-time class
## I referenced the answer from the below webpage
## https://stackoverflow.com/questions/35794140/reading-time-from-csv-file-in-r
library(lubridate)

subdata$date_time <- paste(subdata$V1, subdata$V2)
subdata$date_time <- dmy_hms(subdata$date_time)
subdata[1:2] <- list(NULL)

names(subdata)[1:7] <- c('Global_active_power','Global_reactive_power','Voltage','Global_intensity','Sub_metering_1','Sub_metering_2','Sub_metering_3')

## creates the PNG file
png("Plot 1.png")
hist(subdata$Global_active_power, col= "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
dev.off() 

}