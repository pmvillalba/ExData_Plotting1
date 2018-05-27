dir.data <- getwd()
# Load data
dt <- read.table(file.path(dir.data,"household_power_consumption.txt"),
                 header = TRUE,stringsAsFactors = FALSE, sep = ";")
# Find position for dates
dt$Date <- as.Date(dt$Date,"%d/%m/%Y")
#dt$Time <- strptime(dt$Time,"%H:%M:%S")
indDates <- which(dt$Date=="2007-02-01" | dt$Date=="2007-02-02")
print(min(indDates))
print(max(indDates)-min(indDates))
# Load only the dates of interest
header <- read.table(file.path(dir.data,"household_power_consumption.txt"),
                     nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
dtPrj <- read.table(file.path(dir.data,"household_power_consumption.txt"),
                    header=FALSE, stringsAsFactors=FALSE, sep=";", skip=66637, nrows=2880)
colnames(dtPrj) <- unlist(header)
dtPrj$Date <- as.Date(dtPrj$Date,"%d/%m/%Y")


