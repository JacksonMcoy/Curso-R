# Dibujando un curva cerrada en R, continua
# pero no diferenciable. Un fractal en R usando recursividad


copaNieve.koch <- function(n = 4)
    {
        x0 = NA
        y0 = NA
        mover <- function(x, y) {
            x0 <<- x
            y0 <<- y
        }
        linea <- function(x, y) {
            segments(x0, y0, x0 + x, y0 + y)
            x0 <<- x0 + x
            y0 <<- y0 + y
        }
        koch <-function(dir, len, n) {
            rads = 2 * pi / 360
            if (n > 0) {
                koch(dir, len / 3, n - 1)
                dir = dir + 60
                koch(dir, len / 3, n - 1)
                dir = dir - 120
                koch(dir, len / 3, n - 1)
                dir = dir + 60
                koch(dir, len / 3, n - 1)
            } else
            linea(len * cos(rads * dir), len * sin(rads * dir))
        }

        mover(-1/2, sqrt(3/4)/3)
        plot.new()
        plot.window(xlim = c(-1/2, 1/2),
                    ylim = c(-2/3, 2/3),
                    asp = 1)
        title(main = paste("El copo de nieve de Koch de orden", n))
        koch(0, 1, n)
        koch(-120, 1, n)
        koch(120, 1, n)
    }

copaNieve.koch()
