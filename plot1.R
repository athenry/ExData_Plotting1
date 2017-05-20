# read in data
hpc <- read.csv.sql("household_power_consumption.txt", 
                    sql = "select * from file where Date in ('1/2/2007','2/2/2007')", 
                    header = TRUE, sep = ";")

# create the required png file according to assignment specifications
png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "white")

# create histogram of Global Active Power
hist(hpc$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts")

# Close the graphics device
dev.off()