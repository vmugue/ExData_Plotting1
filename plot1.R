source("prepare_dataset.R")

windows.options(width=480, height=480)
par(mfrow = c(1, 1))

### Plot 1
hist(hpc_obs$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.copy(png, file = "plot1.png")
dev.off()
