plot(1,3)
plot(c(1,8),c(3,10))

#multiple points
plot(c(1,2,3,4,5),c(6,7,8,9,10))
x <- c(1,2,3,4,5)
y <- c(6,3,7,8,1) 
plot(x,y) 

#sequence of points
plot(1:10)

#draw a line
plot(1:10, type='l')

#plot labels
plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y-axis")

#graph appearance
plot(1:10, col="Red")

#size
plot(1:10, cex=2)

#point shape
plot(1:10, pch=0,cex=2)
plot(1:10, pch=1,cex=2)
plot(1:10, pch=2,cex=2)
plot(1:10, pch=3,cex=2)
plot(1:10, pch=4,cex=2)
plot(1:10, pch=5,cex=2)
plot(1:10, pch=6,cex=2)
plot(1:10, pch=7,cex=2)
plot(1:10, pch=8,cex=2)
plot(1:10, pch=9,cex=2)
plot(1:10, pch=10,cex=2)
plot(1:10, pch=11,cex=2)
plot(1:10, pch=12,cex=2)
plot(1:10, pch=13,cex=2)
plot(1:10, pch=14,cex=2)
plot(1:10, pch=15,cex=2)
plot(1:10, pch=16,cex=2)
plot(1:10, pch=17,cex=2)
plot(1:10, pch=18,cex=2)
plot(1:10, pch=19,cex=2)
plot(1:10, pch=20,cex=2)
plot(1:10, pch=21,cex=2)
plot(1:10, pch=22,cex=2)
plot(1:10, pch=23,cex=2)
plot(1:10, pch=24,cex=2)
plot(1:10, pch=25,cex=2)

#line color
plot(1:10, type='l', col='blue')

#line width
plot(1:10, type='l', lwd='2')

#line styles
plot(1:10, type='l', lwd='2', lty=0)#removes the line
plot(1:10, type='l', lwd='2', lty=1)#solid line
plot(1:10, type='l', lwd='2', lty=2)#dashed line
plot(1:10, type='l', lwd='2', lty=3)#dotted line
plot(1:10, type='l', lwd='2', lty=4)#dashed dotted line
plot(1:10, type='l', lwd='2', lty=5)#long dashed line

#pie charts
x <-c(10,20,30,40)
pie(x)
pie(x, init.angle=90)#start th first pie at 90 dgrees.
#labels&headers
mylabel<-c("Apples", "Banana", "Cherries", "Dates")
pie(x, label=mylabel, main="Fruits")

#legend
legend("bottomright", mylabel, fill=colors)

