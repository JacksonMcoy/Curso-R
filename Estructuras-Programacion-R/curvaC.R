
# Ejemplo del uso de funciones en el grafico de una curva

curvaC <- function(n = 4)
  {
    rads = 2 * pi / 360
    fct = 1/sqrt(2)
    x0 = NA
    y0 = NA
    mover <-function(x, y) {
      x0 <<- x
      y0 <<- y
    }
    linea <- function(x, y) {
      segments(x0, y0, x0 + x, y0 + y)
      x0 <<- x0 + x
      y0 <<- y0 + y
    }
    dibujaC<- function(dir, len, n) {
      if (n > 0) {
        dir = dir + 45
        dibujaC(dir, len * fct, n - 1)
        dir = dir - 90
        dibujaC(dir, len * fct, n - 1)
        dir = dir + 45
      }
      else
        linea(len * cos(rads * dir), len * sin(rads * dir))
    }
    mover(0, 0)
    plot.new()
    plot.window(xlim = c(-1, 0.25),
                ylim = c(-0.5, 1.5),
                asp = 1)
    title(main = paste("Curva C de orden", n))
    dibujaC(90, 1, n)
  }

curvaC(12)
