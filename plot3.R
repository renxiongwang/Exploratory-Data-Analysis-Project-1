#Plot3

#Load the data"
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character", "character"))
s <- dmy(data$Date)
t <- s >= dmy("01/02/2007") & s <= dmy("02/02/2007")

"Select out from 01/02/2007 to 02/02/2007"
DATE <- data[t, ]
rm(data)

#Plot
png(file = "plot3.png")
plot(as.numeric(DATE$Sub_metering_1), type = "l", xlab = "", ylab = "Energy sub metering", xaxt = "n")
lines(as.numeric(DATE$Sub_metering_2), col = "red")
lines(as.numeric(DATE$Sub_metering_3), col = "blue")
axis(1, c(1, 1440, 2880), c("Thu", "Fri", "Sat"))
legend("topright", lty = 1, col= c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
