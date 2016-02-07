# Set the workin directory 
setwd("C:/Users/paul/repos/ExData_Plotting1")

#
# check to see if the dataset zip archive we are interested in exists in current working directory
# if it does, we proceed, else we must download it
# 

epc_archive <- "exdata_data_household_power_consumption.zip"
epc_ds      <- "household_power_consumption.txt"

my_working_dir <- getwd()
my_zip_archive <- paste(my_working_dir, epc_archive, sep = "/") 


if (!exists("epc_df")) {
      cat("checking current working directory ", my_working_dir, "for zip arcvhive ", epc_archive, "\n")
      cat("\n")
      
      if (!file.exists(my_zip_archive)) {
            
            cat("\tZip archive does no exist, downloading\n")
            cat("\n")
            
            download.file( url      = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                           destfile = my_zip_archive,
                           method   = "auto",
                           mode     = "wb"
            )
      } else {
            cat("zip archive ", my_zip_archive, "exists, no need to download\n")
            cat("\n")
      }
      
      # read whole data frame into memory, setting NA values to be imported for ?
      #
      epc_df <- read.csv( unz(my_zip_archive, epc_ds), 
                          sep = ";", 
                          stringsAsFactors = FALSE,
                          colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"),
                          na.strings = c("?", "NA")
      )
      
      # subset to the dates of interest for the assignment
      # 
      epc_df <- epc_df[ epc_df$Date == "1/2/2007" | epc_df$Date == "2/2/2007", ]
      
      
      # cast data from character to Date datatype. format will be of type 01022007
      #
      epc_df$Date <- as.Date(epc_df$Date, format="%d/%m/%Y")
      
      # create a new combined datatime field 
      epc_df$DateTime <- strptime(paste(epc_df$Date, epc_df$Time), format='%Y-%m-%d %H:%M:%S')
      
}
















