# Assumes data has already been read in for plot1
# Create the plot file according to assignment specifications
png(filename = "plot3.png", width = 480, height = 480, units = "px", bg = "white")

# Create the empty plot
with(hpc, plot(day, Global_active_power, xlab = "", ylab = "Energy sub metering", ylim = c(0, 40), type = "n"))

# Add line for Sub_metering_1
with(hpc, lines(day, Sub_metering_1, col = "black"))

# Add line for Sub_metering_2
with(hpc, lines(day, Sub_metering_2, col = "red"))

# Add line for Sub_metering_3
with(hpc, lines(day, Sub_metering_3, col = "blue"))

#Add legend
legend("topright", c("Sub_metering_1", "Sub-metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1, 1, 1))

# Close the graphics device
dev.off()
