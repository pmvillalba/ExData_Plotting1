# Load only the dates of interest
read_data <- function(){
    header <- read.table(file.path(getwd(),"household_power_consumption.txt"),
                         nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
    dt <- read.table(file.path(dir.data,"household_power_consumption.txt"),
                     header=FALSE, stringsAsFactors=FALSE, sep=";",
                     skip=66637, nrows=2880, na.strings="?")
    colnames(dt) <- unlist(header)
    # Combine date and time into a single column
    dt$DateTime <- strptime(paste(dt$Date,dt$Time),"%d/%m/%Y %H:%M:%S")
    # Remove "Time" column
    dt <- subset(dt,select=-c(Date,Time))
    return(dt)
}