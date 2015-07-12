setwd("C:/Users/kfollmer/Documents/R/Data Science Course/Exploratory Data Analysis/")

File=file("household_power_consumption.txt")
df=read.csv.sql("household_power_consumption.txt","select * from File where Date in ('1/2/2007', '2/2/2007')", header=TRUE, sep= ";")
date <- as.Date(df$Date, "%d/%m/%Y")
time <- df[,2]
x <- paste(date,time)
datetime <- strptime(x, format = "%Y-%m-%d %H:%M:%S")

# PLOT 3 
png("plot3.png", width = 480, height = 480) # did in png first to not cut off legend re: advice on discussion forum

plot(datetime,df$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")

points(datetime,df$Sub_metering_1, type = "l")
points(datetime,df$Sub_metering_2, type = "l", col = "red")
points(datetime,df$Sub_metering_3, type = "l", col = "blue")

legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=c(1,1,1))
dev.off()
