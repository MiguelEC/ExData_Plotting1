dataFile <- paste(getwd(), "/household_power_consumption.txt", sep="")
data     <- read.table(dataFile, header=FALSE, sep=';', skip=grep("^31/1/2007;23:59:00", readLines(dataFile)), nrows=2880)

columnHeaders  <- read.table(dataFile, sep=';', header=TRUE, nrows=1) 
colnames(data) <- colnames(columnHeaders)

low = 66637
high = 69517
n = high-low


datafile <- "household_power_consumption.txt"
classes <- c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")

powerdata <- read.table(datafile, header = FALSE, sep = ";", colClasses = classes, 
                        skip =low, nrow=n, na.strings = "?")

col_names <- read.table(datafile, header = TRUE, sep = ";", colClasses = classes, 
                        nrow=1, na.strings = "?")