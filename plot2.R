setwd("C:/Users/kfollmer/Documents/R/Data Science Course/Exploratory Data Analysis/")

File=file("household_power_consumption.txt")
df=read.csv.sql("household_power_consumption.txt","select * from File where Date in ('1/2/2007', '2/2/2007')", header=TRUE, sep= ";")
date <- as.Date(df$Date, "%d/%m/%Y")
time <- df[,2]
x <- paste(date,time)
datetime <- strptime(x, format = "%Y-%m-%d %H:%M:%S")

# PLOT 2
plot(datetime, df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png")
dev.off()
