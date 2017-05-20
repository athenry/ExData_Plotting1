# Assume data already read in for plot1
# Create plot file according to assignment specifications
png(filename = "plot4.png", width = 480, height = 480, units = "px")

# Define layout of the four plots
par(mfcol = c(2,2))

# Create plots in fill order
# first plot (top left)
with(hpc, plot(datetime, Global_active_power, xlab = "", ylab = "Global Active Power", type = "n"))
with(hpc, lines(datetime, Global_active_power))

#second plot (bottom left)
with(hpc, plot(datetime, Global_active_power, xlab = "", ylab = "Energy sub metering", ylim = c(0, 40), type = "n"))
with(hpc, lines(datetime, Sub_metering_1, col = "black"))
with(hpc, lines(datetime, Sub_metering_2, col = "red"))
with(hpc, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", c("Sub_metering_1", "Sub-metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1, 1, 1), bty = "n")

## third plot (top right)
with(hpc, plot(datetime, Voltage, xlab = "datetime", ylab = "Voltage", type = "n"))
with(hpc, lines(datetime, Voltage))

## fourth plot (bottom right)
with(hpc, plot(datetime, Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "n"))
with(hpc, lines(datetime, Global_reactive_power))

# Close graphics device
dev.off()