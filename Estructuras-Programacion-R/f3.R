# Definiendo funciones dentro de otras

f <- function(x,m=0,s=1){
   H<-function(t) 1-pnorm(t,m,s)
   integral<-integrate(H,lower=x,upper=Inf)$value
   res<-H(x)/integral
   return(res)
  }

# Produciendo un Warning, debido que el primer argumento 
# no es un vector

f(x <- 0:1)

#  Vectoricemos la funcion

Vectorize(f)(x)

# Usando un bucle

y <- rep(NA,2)
x <- 0:1
for(i in 1:2) y[i] <- f(x[i])
y

#Usando la funcion sapply

y <- sapply(x,"f")
y
