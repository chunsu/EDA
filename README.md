# Exploratory Data Analysis Week1 Assignment

## Dataset
the “Individual household electric power consumption Data Set” [20Mb] which made available on the course web site:
https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip                 
  
Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.   


## 9 variables in the dataset
- 'Date': Date in format dd/mm/yyyy       
- 'Time': time in format hh:mm:ss                 
- 'Global_active_power': household global minute-averaged active power (in kilowatt)      
- 'Global_reactive_power': household global minute-averaged reactive power (in kilowatt)       
- 'Voltage': minute-averaged voltage (in volt)
- 'Global_intensity': household global minute-averaged current intensity (in ampere)
- 'Sub_metering_1': energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
- 'Sub_metering_2': energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
- 'Sub_metering_3': energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

## Loading the data

When loading the dataset into R, please consider the following:
- The dataset has 2,075,259 rows and 9 columns. First calculate a rough estimate of how much memory the dataset will require in memory before reading into R. 
- Only be using data from the dates 2007-02-01 and 2007-02-02. 
- You may find it useful to convert the Date and Time variables to Date/Time classes in R using the strptime() and as.Date() functions.
- Note that in this dataset missing values are coded as ?\.
