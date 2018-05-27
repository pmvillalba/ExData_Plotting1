source("read_data.R")
dt <- read_data()

png("plot3.png", width = 480, height = 480)
plot(dt$DateTime, dt$Sub_metering_1, type="l", col="black", ylab="Energy sub metering", xlab="")
lines(dt$DateTime, dt$Sub_metering_2, col="red")
lines(dt$DateTime, dt$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
                   col=c("black","red","blue"), lty="solid")
dev.off()