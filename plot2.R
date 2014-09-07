#Plot2

#Load the data"
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character", "character"))
s <- dmy(data$Date)
t <- s >= dmy("01/02/2007") & s <= dmy("02/02/2007")

"Select out from 01/02/2007 to 02/02/2007"
DATE <- data[t, ]
rm(data)

#Plot
png(file = "plot2.png")
plot(as.numeric(DATE$Global_active_power), type = "l", xlab = "", ylab = "Global Active Power(kilowatts)", xaxt = "n")
axis(1, c(1, 1440, 2880), c("Thu","Fri", "Sat"))
dev.off()
