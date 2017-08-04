# El teorema del Limite Central en R, usando animation

library(animation)

# un numero positivo para configurar el intervalo de tiempo de la animacion
ani.options(interval = 0.5)
par(mar = c(3, 3, 1, 0.5), mgp = c(1.5, 0.5, 0), tcl = -0.3)
lambda = 4

# Muestra aleatoria para la distribucion de Poisson con parametro lambda
f <- function(n) rpois(n, lambda) 

# Funcion del paquete animation, incluyendo los P-valores
# del test de normalidad de Shapiro

clt.ani(FUN = f, mean = lambda, sd = lambda)


# El teorema del limite central y la distribucion Gaussiana

#help(rug)
central_limite<- function (r=runif, m=.5, s=1/sqrt(12), n=c(1,3,10,30), N=1000) {
  for (i in n) {
    x <- matrix(r(i*N),nc=i)
    x <- ( apply(x, 1, sum) - i*m )/(sqrt(i)*s)
    hist(x, col='light blue', probability=T, ylab = "Densidad", main=paste("n =",i), 
         ylim=c(0,max(.4, density(x)$y)))
    lines(density(x), col='red', lwd=3)
    curve(dnorm(x), col='green', lwd=3, lty=3, add=T)
    if( N>100 ) {
      rug(sample(x,100))
    } else {
      rug(x)
    }
  }
}
op <- par(mfrow=c(2,2))
central_limite()
par(op)


op <- par(mfrow=c(2,2))
central_limite(rexp, m=1, s=1)
par(op)

op <- par(mfrow=c(2,2))
central_limite(function (n) { rnorm(n, sample(c(-3,3),n,replace=T)) }, 
                m=0, s=sqrt(10), n=c(1,2,3,10))
par(op)
