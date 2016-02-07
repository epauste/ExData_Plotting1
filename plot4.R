source("prepare_ds.R")

png( filename = "plot4.png")

par( mfrow = c(2,2))


plot(x = epc_df$DateTime, 
     y = epc_df$Global_active_power,
     type = "l",
     xlab = '',
     ylab = "Global Active Power"
)

plot(x = epc_df$DateTime,
     y = epc_df$Voltage,
     type = "l",
     col = "black",
     xlab = 'datetime',
     ylab = "Voltage"
)


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


plot(x = epc_df$DateTime,
     y = epc_df$Global_reactive_power,
     type = "l",
     col = "black",
     xlab = 'datetime',
     ylab = "Global_reactive_power"
)

dev.off()


