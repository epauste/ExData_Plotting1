# plot 2 ----------------------------------------
source("prepare_ds.R")

png( filename = "plot2.png",
     width = 480, 
     height = 480, 
     units = "px")


plot(x = epc_df$DateTime, 
     y = epc_df$Global_active_power,
     type = "l",
     xlab = '',
     ylab = "Global Active Power (Kilowatts)"
)

dev.off()
