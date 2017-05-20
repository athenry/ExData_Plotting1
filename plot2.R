# Assume data already imported for plot1
# Create new column for combined date and time
library(lubridate)
hpc$datetime <- dmy_hms(paste(hpc$Date, hpc$Time))

# Create the plot file according to assignment specifications
png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "white")

# Create the plot
with(hpc, plot(datetime, Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "n"))
with(hpc, lines(datetime, Global_active_power))
 
# Close the graphics device
dev.off()    