source("read_data.R")
dt <- read_data()

png("plot4.png", width = 480, height = 480)

par(mfrow=c(2,2))
# Plot 1,1
plot(dt$DateTime, dt$Global_active_power, type="l", xlab="", ylab="Global Active Power")
# Plot 1,2
plot(dt$DateTime, dt$Voltage, type="l", xlab="datetime", ylab="Voltage")
# Plot 2,1
plot(dt$DateTime, dt$Sub_metering_1, type="l", col="black", ylab="Energy sub metering", xlab="")
lines(dt$DateTime, dt$Sub_metering_2, col="red")
lines(dt$DateTime, dt$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black","red","blue"), lty="solid")
# Plot 2,2
plot(dt$DateTime, dt$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()