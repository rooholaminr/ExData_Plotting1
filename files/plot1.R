### first we call prepare data program

source('prep_data.R')

# taking the active power vector and convert it to numeric ; use hist
hdata <- as.numeric(data$Global_active_power)
png(filename = 'plot1.png',width = 480,height = 480,units = 'px')
par(bg = 'lightgrey')
hist(hdata,xlab = 'Global Active Power (KiloWatts)',main = 'Global Active Power',col = 'red',ylim = c(0,1200),xlim = c(0,6))
dev.off()