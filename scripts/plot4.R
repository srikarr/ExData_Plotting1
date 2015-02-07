source("scripts/load.R")

#open the png graphic device
png(filename="plots/plot4.png")

#load the data
subset.data <- load.data()
par(mfrow = c(2,2))


#plot the graphs
#top left
plot(subset.data$date.time, subset.data$Global_active_power,
     ylab = "Global Active Power (kilowatts)", 
     xlab = "",
     type = 'l')

#top right
plot(subset.data$date.time, subset.data$Voltage,
     xlab = "datetime", 
     ylab = "Voltage", type = 'l')

#bottom left
plot(subset.data$date.time, subset.data$Sub_metering_1,
     ylab = "Energy sub metering", 
     xlab = "",
     type = 'l')
lines(subset.data$date.time, subset.data$Sub_metering_2, col = "red")
lines(subset.data$date.time, subset.data$Sub_metering_3, col = "blue")
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty="solid")

#bottom right
plot(subset.data$date.time, subset.data$Global_reactive_power,
     xlab = "datetime", 
     ylab = "Global_reactive_power", type = 'l')

#close the graphics device
dev.off()