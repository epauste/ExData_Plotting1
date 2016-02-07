# plot 1 ----------------------------------------
source("prepare_ds.R")

# set the graphics device to png
png( filename = "plot1.png",
     width = 480, 
     height = 480, 
     units = "px")

names(epc_df)



hist(epc_df$Global_active_power, 
     col   = "RED",
     xlab  = "Global Active Power (Kilowatts)",
     main = "Global Active Power")

dev.off()
















