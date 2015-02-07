source("scripts/load.R")

#open the png graphic device
png(filename="plots/plot3.png")

#load the data
subset.data <- load.data()

#plot it
plot(subset.data$date.time, subset.data$Sub_metering_1,
     ylab = "Energy sub metering", 
     xlab = "",
     type = 'l')
lines(subset.data$date.time, subset.data$Sub_metering_2, col = "red")
lines(subset.data$date.time, subset.data$Sub_metering_3, col = "blue")
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty="solid")

#close the graphics device
dev.off()