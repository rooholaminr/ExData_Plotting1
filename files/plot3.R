

source('prep_data.R')


png(filename = 'plot3.png',width = 480,height = 480, units = 'px')

#drawing the main plot frame
plot(datevector,data$Sub_metering_1,type = 'n',ylab = 'Energy Sub Metering')

#filling with data
lines(datevector,data$Sub_metering_1)
lines(datevector,data$Sub_metering_2,col = 'red')
lines(datevector,data$Sub_metering_3, col = 'blue')

#create legend
legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       col = c('black','red','blue'),lty = 1, lwd = 2,bty = 'n')
dev.off()