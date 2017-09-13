# Combinatorias en R 

install.packages('gtools')
library(gtools)

# Ejemplo del principio de multiplicacion

expand.grid(S1 = 1:2, S2 = 1:3, S3 = 1:2)

# La funcion factorial

factorial(1:8)

# Aproximacion de Stirling

x = 1:100
R = stack(list('x!' = lfactorial(x), Stirling = log(2 * pi)/2 + (x + 1/2) * log(x) - x, 'exp(x)' = x,
               'x' = log(x)))
names(R) = c("lf", "Function")
R$x = x
qplot(x, lf, color = Function, lty = Function, geom = "line",
      xlab = "x", ylab = "log(f(x))", data = R,
      size = I(2), main = "Tasa  de crecimiento en escala Log ")



# urna con 5 bolas

x <- c('rojo', 'azul', 'verde', 'anaranjado', 'amarillo')

# Escogemos tres bolas de la urna con reemplazamiento

permutations(n = 5, r=3, v= x, repeats.allowed = T)
nrow(permutations(n=5,r=3,v=x,repeats.allowed=T))


# Escogemos tres bolas de la urna sin reemplazamiento

permutations(n=3,r=3,v=x)
nrow(permutations(n=5,r=3,v=x))

# Funcion para calcular permutaciones sin reemplazamiento:

perm_sin_reemplazamiento <- function(n ,r){
  return (factorial(n)/factorial(n -r))
}

# Escogemos 16 resultados, elegimos 3
perm_sin_reemplazamiento(16, 3)


# Funcion de R para calcular el numero de combinaciones sin reemplazamiento

choose(n = 24, k = 5)


# Funcion para calcular combinaciones con reemplazamiento

comb_con_reemplazamiento <- function(n, r){
  return(factorial(n + r -1)/(factorial(r)*factorial(n -1)))
}

comb_con_reemplazamiento(24, 4)

# Paradoja del cumpleaños

r = 1:100
p = exp(lfactorial(365) - lfactorial(365 - r) - r * log(365))
qplot(main = "Probabilidad  de  que r personas tengan   diferentes cumpleaños",
    x = r, y = p, size = I(2), xlab = "r", ylab = "P(A_r)")

# Lista todas las combinaciones posibles de 3 de cada 5 letras

combn(letters[1:5], 3)

