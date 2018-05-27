source("read_data.R")

dt <- read_data()
png("plot2.png", width = 480, height = 480)
plot(dt$DateTime,dt$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
