source('prep_data.R')

#open a png plot device

png(filename = 'plot2.png',width = 480,height = 480,units = 'px')

# plot the frame and use type n and then fill the plot fram with lines
plot(datevector,data$Global_active_power,type = 'n',ylab = 'Global Active Power (KiloWatts)',xlab='')
lines(datevector,data$Global_active_power)
dev.off()