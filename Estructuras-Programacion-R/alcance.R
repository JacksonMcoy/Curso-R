# Alcance en R

# Mismo nombre, diferentes variables

x = 8

f1<- function(){
  x = 3
}

f1()

# Viendo variables globales

y = 5
f2 <- function(){
  x = 10
  x + y
}

f2()

# Las variables de una funcion exteriores pueden ser 
# visibles dentro de las funciones anidadas

fext <- function(){
  fint <- 
      function(){
        y = 20
        x + y
      }
  x = 9
  fint()
}

fext()

# Mas ejemplos

f4 <- function(u) x + u
x = 8
f4(13)

x = 9
f4(7)

f5 <-
  function(x, y){
    f4 <- function(u) x + u
    f4(y)
  }
f5(2,6)

# Un importante cambio en la funcion anterior

f6 <- function(x, y){
  f4 <- function(u) x + u
  f4
}
valor1 <- f6(5)
valor1
valor1(1)
valor1(12)


# Otro ejemplo (clausura)

f7 <- 
  function(x)
    function(u) u + x

valor10<- f7(7)
valor10(6)


# Ejemplo de probabilidad usando clausura y la distribucion de Poisson

clausura_Poisson<-
  function(x)
    function(lambda) prod(dpois(x, lambda))

data_poisson <- rpois(20, 10)
L <- clausura_Poisson(data_poisson)
x <- seq(5, 15, length = 1001)
y <- sapply(x, L)
plot(x, y, type = "l")

optimize(L, c(8, 12), maximum = TRUE)

# Creando clausura con la funcion with() 

L <- with(list(x = data_poisson),
         function(lambda)
           prod(dpois(x, lambda)))

# Creando clausura con la funcion local()

L <- local({
  x <- data_poisson
  function(lambda)
    prod(dpois(x, lambda))
})

optimize(L, c(8, 12), maximum = TRUE)

# Ocultado funciones de ayuda con clusura

binp <- local({
  fact <-
    function(n) gamma(n + 1)
  bincoef <-
    function(n, k)
      fact(n)/(fact(k) * fact(n - k))
  function(k, n, p)
    bincoef(n, k) * p^k * (1 - p)^(n - k)
})

binp(0:5, 10, .5)
objects()

# Funcion anonima y clausura

(local({
  fact = function(n)
    if (n <= 1) 1 else n * fact(n - 1)
}))(9)

