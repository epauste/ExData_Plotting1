# plot 3 ----------------------------------------
source("prepare_ds.R")

png( filename = "plot3.png",
     width = 480, 
     height = 480, 
     units = "px")


plot(x = epc_df$DateTime, 
     y = epc_df$Sub_metering_1,
     type = "l",
     xlab = '',
     ylab = "Energy Sub Metering",
     col = "black"
)
lines(x = epc_df$DateTime,
      y = epc_df$Sub_metering_2,
      type = "l",
      col = "red"
)
lines(x = epc_df$DateTime,
      y = epc_df$Sub_metering_3,
      type = "l",
      col = "blue"
)

legend("topright", 
       lty = 1,
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)

dev.off()

