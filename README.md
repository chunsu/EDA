# Exploratory Data Analysis Week1 Assignment

## Repositary
There are four PNG files and four R code files, a total of eight files in the top-level folder of the repo

## Dataset
“Individual household electric power consumption Data Set” [20Mb]
https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip                 
  
Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.   


## 9 variables in the dataset
- `Date`: Date in format dd/mm/yyyy       
- `Time`: time in format hh:mm:ss                 
- `Global_active_power`: household global minute-averaged active power (in kilowatt)      
- `Global_reactive_power`: household global minute-averaged reactive power (in kilowatt)       
- `Voltage`: minute-averaged voltage (in volt)
- `Global_intensity`: household global minute-averaged current intensity (in ampere)
- `Sub_metering_1`: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
- `Sub_metering_2`: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
- `Sub_metering_3`: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

## Notes:

- When loading the dataset into R, I use `readLines` function to increase the speed. ref[1]
- package `lubridate` is required, function `dmy_hms` is used to create a date-time class. ref[2]

## Reference
- 1.https://stackoverflow.com/questions/24090768/importing-only-rows-matching-specific-values
- 2.https://stackoverflow.com/questions/35794140/reading-time-from-csv-file-in-r
