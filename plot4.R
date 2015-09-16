source("prepare_dataset.R")


### Plot 4

par(mfrow = c(2, 2))#, mar = c(5, 4, 4, 2) + 0.1, mai = c(0.5, 0.5, 0.5, 0.5))
{
plot(x = hpc_obs$DateTime,
     y = hpc_obs$Global_active_power,
     type = "l",
     ylab = "Global Active Power",
     xlab = ""
)

plot(x = hpc_obs$DateTime,
     y = hpc_obs$Voltage,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime")

plot(x = hpc_obs$DateTime,
     y = hpc_obs$Sub_metering_1,
     col = "black",
     type = "l",
     ylab = "Energy sub metering",
     xlab = ""
)

lines(x = hpc_obs$DateTime,
      y = hpc_obs$Sub_metering_2,
      col = "green")

lines(x = hpc_obs$DateTime,
      y = hpc_obs$Sub_metering_3,
      col = "blue")

legend("topright",
       pch = "", # label
       bty = "n", # no border for legend box
       col = c("black" , "green", "blue"), # colors of lines
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), # names of lines
       lwd = 1, # label width
       lty = 1, # label line type (default)
       #x.intersp = 2,
       adj = c(0.1),
       cex = 0.8
       
)

plot(x = hpc_obs$DateTime,
     y = hpc_obs$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")

}
dev.copy(png, file = "plot4.png")
dev.off()
