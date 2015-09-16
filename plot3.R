source("prepare_dataset.R")

windows.options(width=480, height=480)
par(mfrow = c(1, 1))




### Plot 3

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
       pch = "",
       col = c("black" , "green", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1,
       lty = 1,
       x.intersp = 2,
       adj = c(0.1),
       cex = 0.8
       
)

dev.copy(png, file = "plot3.png")
dev.off()
