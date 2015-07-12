setwd("C:/Users/kfollmer/Documents/R/Data Science Course/Exploratory Data Analysis/")

# only read dates 2007-02-01 and 2007-02-02
File=file("household_power_consumption.txt")
df=read.csv.sql("household_power_consumption.txt","select * from File where Date in ('1/2/2007', '2/2/2007')", header=TRUE, sep= ";")
as.numeric(df$Global_active_power)
x <- df$Global_active_power

# PLOT 1
par(mfrow = c(1,1))
hist(as.numeric(x), col = "red", freq = TRUE, main="Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency") #ad xlim and ylim for axes ranges
dev.copy(png, file = "plot1.png")
dev.off()
