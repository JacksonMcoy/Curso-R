# Asumimos que la longitud del palillo es 1.


# Generamos los cuatro puntos finales y las longitudes de las 
# piezas

f <-  c(0, sort(runif(2)), 1)
len <- diff(f)

# El palillo puede ser montado usado desigualdad de triangulos

len <- sort(len)
sum(len[1:2]) >= len[3]

# Agrupemos esto es una funcion de simulacion

fsim <- function(n) {
    # Seleccionamos dos puntos de division (como  vectores)
    u1 = runif(n)
    u2 = runif(n)
    ## Matriz de puntos de puntos finales
    f = cbind(0, pmin(u1, u2), pmax(u1, u2), 1)
    ## Matriz de longitudes
    l1 = f[,2] - f[,1]
    l2 = f[,3] - f[,2]
    l3 = f[,4] - f[,3]
    ## Test del traingulo
    mean(l1 + l2 >= l3)
}

fsim(10000)