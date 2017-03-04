pot <- function(exponente) {
  function(x) {
    x ^ exponente
  }
}

cuadrado <- pot(2)
cuadrado(2)
cuadrado(4)

cubo <- pot(3)
cuadrado
cubo
as.list(environment(cuadrado))
as.list(environment(cubo))