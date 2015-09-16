source("prepare_dataset.R")

windows.options(width=480, height=480)
par(mfrow = c(1, 1))


### Plot 2
plot(x = hpc_obs$DateTime,
     y = hpc_obs$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = ""
)

dev.copy(png, file = "plot2.png")
dev.off()
