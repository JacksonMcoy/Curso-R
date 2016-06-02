# El epsilon de la maquina puede ser obtenido

macheps <- function(){
  eps =1
  while(1 + eps/2!= 1)eps = eps/2
  eps
}
macheps()

# Usamos la funcion outer 

iz <- 0:4
dz <- seq(0, .8, by = .2)
p  <- outer(iz, dz, function(x, y) pnorm(x + y))
dimnames(p) <- list(z = iz, "Lugar del primer decimal z" = dz)
p <- round(p, 5)
p

# Contruimos una funcion para ILR

ILR <- function(f, a, b, n = 1001) {
    x = seq(a, b, length = n + 1)[-(n + 1)]
    sum(f(x)) * (b - a) / n
}

# Aplicamos la funcion dnorm sobre el intervalo [0,2]

ILR(dnorm, 0, 2)
