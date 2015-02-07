library(lubridate)

load.data <- function() {
  data <- read.table("scripts/household_power_consumption.txt", header=TRUE, sep=";", 
                     na.strings = "?", 
                     colClasses=c(rep('character', 2), rep('numeric', 7)))
  
  data$Date <- dmy(data$Date)
  data$Time <- hms(data$Time)
  
  subset.data <- subset(data, year(Date) == 2007 & 
                          month(Date) == 2 &
                          (day(Date) == 1 | day(Date) == 2))
  subset.data$date.time <- subset.data$Date + subset.data$Time
  subset.data
}



