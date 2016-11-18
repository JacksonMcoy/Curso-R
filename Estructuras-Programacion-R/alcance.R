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
