source("scripts/load.R")

#open the png graphic device
png(filename="plots/plot1.png")

#load the data
subset.data <- load.data()

#plot it
with(subset.data, 
     hist(Global_active_power, col = "red", 
          main = "Global Active Power",
          xlab = "Global Active Power (kilowatts)"))

#close the graphics device
dev.off()