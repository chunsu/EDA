plot2<- function(){
## Before reading the data into R, examine "hosuehold_power_consumption.txt" file in textEdit
## found dates of 2007-02-01 and 2007-02-02 are '1/2/2007' and '2/2/2007'

## I referenced the answer from the below webpage
## https://stackoverflow.com/questions/24090768/importing-only-rows-matching-specific-values
## Reading the data, only from the dates '1/2/2007' and '2/2/2007', which in dataframe Lines start from 1 and end at 8
## Hence substr(Lines,1,8)
Lines <- readLines("household_power_consumption.txt")
subL <- grep("^[12]/2/2007", substr(Lines, 1, 8) ) 
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
png("Plot 2.png")
with(subdata, plot(date_time, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))
dev.off() 

}
