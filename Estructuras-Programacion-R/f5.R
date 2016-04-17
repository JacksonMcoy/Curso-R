# En R las funciones pueden usar variables locales
# que tienen el mismo nombre que las variables no locales.

beta <- 0
s <- function(X,Y){
   beta <- coefficients(lm(Y~ X))[2]
    return(as.numeric(beta))
    }
attach(cars)
s(speed,dist)
