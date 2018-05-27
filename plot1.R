source("read_data.R")

dt <- read_data()
png("plot1.png", width = 480, height = 480)
hist(dt$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
