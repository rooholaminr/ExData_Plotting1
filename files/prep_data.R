### we set the working directory at the address of dataset

library(lubridate)
addata <- 'C:/Users/Rooholamin Rasooli/Documents/exdata_data_household_power_consumption'
if(addata != getwd()) {setwd(addata)}
maindata <- read.table(file = 'household_power_consumption.txt',sep = ';',header = F,stringsAsFactors = F)
## get names which is in first row
namevec <- as.vector(unlist(maindata[1,],use.names = F))

maindata[,1] <- as.Date(strptime(maindata[,1],format = '%d/%m/%Y'))

data <- subset(maindata,V1 == '2007-02-01' | V1 == '2007-02-02' )
rownames(data) <- NULL
data <- droplevels(data)
names(data) <- namevec
datevector <- ymd_hms(paste(as.character(data$Date),data$Time))
rm(maindata,addata,namevec)

## output of this snippet is data frame of filtered data from main data between 1st and 2nd Feb of 2007 and a vector of timestmps which is needed in next parts


