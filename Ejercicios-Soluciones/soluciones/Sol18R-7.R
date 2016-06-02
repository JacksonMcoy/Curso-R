# Calculamos las raices cuadradas

x = 1:10
sqrt(x)^2
# Comparando valores 
sqrt(x)^2 -x

# Funcion escalar para la raiz cuadrada 

s.r <-function(x, eps = 1e-10) {
  g = 1
  while(abs(1 - g^2/x) > eps)
    g = .5 * (g + x/g)
  g
  
}

#s.r(c(1, 2))
s.r(c(2, 1))


# Vectorizacion usando bucles

r <-function(x, eps = 1e-10) {
  ans = numeric(length(x))
  for(i in seq(along = x))
    ans[i] = s.r(x[i])
  ans
  }

r(c(1, 2))

# Para opimizar esto usamos aritmetica vectorizada. Esto significa
# que expresiones como

#  g = .5 * (g + x/g)

# trabajan bien cuando son vectores.


# Vectorizacion usando calculo vectorial

r <- function(x, eps = 1e-10) {
  g = rep(1, length(x))
  while(any(abs(1 - g^2/x) > eps))
      g = .5 * (g + x/g)
    g
  }

r(c(1, 2))


# Version optimizada: la variable logica n.d  indica que
# que raices deben ser calculadas con precision (TRUE)
# y cuales no (FALSE)

# Usamos este linea any((n.d = abs(1 - g^2/x) > eps))

# Esto calcula el valor de abs(1 - g^2/x) > eps y asigna
# este valor a n.d. Entonces el valor de n.d es usado
# para ver si todo los valores han sido calculado con precision


r <- function(x, eps = 1e-10) {
  g = rep(1, length(x))
  while(any((n.d = abs(1 - g^2/x) > eps)))
    g[n.d] = .5 *(g[n.d] + x[not.d]/g[n.d])
    g
  }

r(c(1, 2))

# El caso anterior no trata en los casos en que x<=0.
# La version escalar puede trabajar  verificando los casos especiales 

s.r <- function(x, eps = 1e-10) {
  if (is.na(x)) x
  else if (x == 0) 0
  else if (x < 0) NaN
  else if (x == Inf) Inf
  else {
      g = 1
      while(abs(1 - g^2/x) > eps)
        g = .5 * (g + x/g)
      g
    }
  }

s.r(-Inf)
s.r(-1)
s.r(0)
s.r(1)
s.r(2)
s.r(NA)
s.r(NaN)
s.r(Inf)

# Agregamos esos tipos a la version vectorizada como sigue

r1 <- function(x, eps = 1e-10) {
  ans = numeric(length(x))
  isna = is.na(x)
  ans[isna] = x[isna]
  ans[!isna & x == Inf] = Inf
  ans[!isna & x < 0] = NaN
  ans[!isna & x == 0] = 0
  pos = !isna & x > 0 & x < Inf
  if (any(pos)) {
    xp = x[pos]
    g = rep(1, length(xp))
    while(any(abs(1 - g^2/xp) > eps))
      g = .5 * (g + xp/g)
    ans[pos] = g
    }
  ans
  }
r1(c(-Inf, -1, 0, 1, 2, Inf, NA, NaN))