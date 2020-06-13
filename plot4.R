par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(data1,plot(Global_active_power~datetime,type="l",xlab="",ylab="Global Active Power"))
with(data1,plot(Voltage~datetime,xlab="datetime",ylab="Voltage",type="l"))
with(data1,plot(Sub_metering_1~datetime,xlab="",ylab="Energy sub metering",type="l"))
with(data1,lines(Sub_metering_2~datetime,col="red",type="l"))
with(data1,lines(Sub_metering_3~datetime,col="blue",type="l"))
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=2,lty=1)
with(data1,plot(Global_reactive_power~datetime,type="l"))
dev.copy(png,file="plot4.png",height=480,width=480)
dev.off()

     