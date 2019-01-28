
library(lubridate)
source('prep_data.R')
datevector <- ymd_hms(paste(as.character(data$Date),data$Time))