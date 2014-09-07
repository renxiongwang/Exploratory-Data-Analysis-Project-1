#Plot1 Histogran Plot

#Load the data"
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character", "character"))
s <- dmy(data$Date)
t <- s >= dmy("01/02/2007") & s <= dmy("02/02/2007")

"Select out from 01/02/2007 to 02/02/2007"
DATE <- data[t, ]
rm(data)

#Plot
png(file = "plot1.png")
hist(as.numeric(DATE$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()
