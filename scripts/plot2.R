source("scripts/load.R")

#open the png graphic device
png(filename="plots/plot2.png")

#load the data
subset.data <- load.data()

#plot it
plot(subset.data$date.time, subset.data$Global_active_power,
     ylab = "Global Active Power (kilowatts)", 
     xlab = "",
     type = 'l')

#close the graphics device
dev.off()