analysis_plot(){

##Dates that are in the form %Y-%m-%d or Y/%m/%d will import correctly

#setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") )
#setAs("character","myTime", function(from) as.POSIXlt(from, format="%H:%M:%S") )
#data <- read.table("household_power_consumption.txt", colClasses=c('myDate',''), header=FALSE)




##
## https://stackoverflow.com/questions/24090768/importing-only-rows-matching-specific-values

Lines <- readLines("household_power_consumption.txt")
subL <- grep("^[1234567]/5/2007", substr(Lines, 1,8) )# a numeric vector
subdata <- read.table(text=Lines[subL], header = TRUE))


##
## https://stackoverflow.com/questions/35794140/reading-time-from-csv-file-in-r
library(lubridate)

subdata$date_time <- paste(subdata$V1, subdata$V2)
subdata$date_time <- dmy_hms(subdata$date_time)
subdata[1:2] <- list(NULL)

}