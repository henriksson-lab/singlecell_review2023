

#x~Uniform[0,20]
#y1 ~ Poisson[ λ=x ]
#y2 ~ Normal[ μ=0 if x<10, otherwise 5; σ=1 ]

x <- seq(0,20,by=0.05)

y1 <- rpois(n=length(x), lambda=x)

themu <- x*0 + (x>=10)*5
y2 <- rnorm(n=length(x), themu, 1)

pdf("gp.pdf",height = 4,width = 5)
plot(y1,y2,cex=0.5,pch=19)
dev.off()

