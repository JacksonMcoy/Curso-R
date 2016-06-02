# Las soluciones se basan en las funciones mencionadas


# Calculando la densidad de probabilidad
ch2prob <- function(a, b){
    integrate(function(x) dchisq(x, 5), a, b)
}

# parte b 
prob <- function(a){
    integrate(function(x) dchisq(x, 3), a, a+2)$value
}

# parte c
a <- optimise(prob, c(0, 10), max = TRUE)$maximum
c(a, a+2)