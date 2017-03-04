# Transformacion de variables aleatorias.
# En el ejemplo de la distribucion gamma


f <- function(x) dgamma(x,2)
f1 <- function(x) f(x-1)
f2 <- function(x) f(x/2)/2
f3 <- function(x) 2*x*f(x^2)
f4 <- function(x) f(1/x)/x^2
f5 <- function(x) f(exp(x))*exp(x)
f6 <- function(x) f(log(x))/x
x=seq(0,10,by=.025)
plot(x,f(x), ylim=c(0, 1.3), xlim=c(0, 10), main="Densidades Teoricas",
     lwd=2, type="l", xlab="x", ylab="")
lines(x,f1(x), lty=2, lwd=2)
lines(x,f2(x), lty=3, lwd=2)
lines(x,f3(x), lty=4, lwd=2)
lines(x,f4(x), lty=1, col="grey", lwd=2)
lines(x,f5(x), lty=2, col="grey", lwd=2)
lines(x,f6(x), lty=3, col="grey", lwd=2)
legend("topright", lty=1:4, col=c(rep("black", 4), rep("grey", 3)),
       leg=c("X","X+1","2X", "sqrt(X)", "1/X", "log(X)", "exp(X)"))
