pdf("normpoiss.pdf",height = 4,width = 5)

x <- seq(-10,10,by=0.05)
y <- dnorm(x,mean=2, sd=2)
plot(x,y, type="l", ylim=c(0,0.3), col="blue")

x <- seq(0,10)
y <- dpois(x, lambda=2)
points(x,y, pch=19, col="red")

for(i in 1:length(x)){
  lines(c(x[i],x[i]),c(0,y[i]),col="red")
}



dev.off()

