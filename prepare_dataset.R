##########################    Data preparation    ############################

data_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(data_url, "house_power_consumption.zip")
unzip("house_power_consumption.zip")
data_file <- "household_power_consumption.txt"
file_column_class <- sapply(read.csv2(data_file,
                                      dec = ".",
                                      nrows = 100),
                            class)

household_power_consumption <- read.csv2(data_file,
                  dec =".", 
                  colClasses = file_column_class,
                  na.strings = "?")

household_power_consumption$Date <- as.Date(household_power_consumption$Date, format = "%d/%m/%Y")

#####haven't found format for time only
DateTime <- strptime(paste(household_power_consumption$Date, household_power_consumption$Time), format = "%Y-%m-%d %H:%M:%S")
household_power_consumption <- cbind(DateTime, household_power_consumption)

### observer hpuse power consumption - hpc_obs
hpc_obs <- household_power_consumption[household_power_consumption$Date %in% as.Date(c('2007-02-01', '2007-02-02')),]

 