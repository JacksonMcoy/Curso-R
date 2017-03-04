# Resolviendo f(x) = 0

f <- function(y, a, n) {
        a^2 + y^2 + 2*a*y/(n-1) - (n-2)
    }

    a <- 0.5
    n <- 20
    b0 <- 0
    b1 <- 5*n

    #resolviendo por el metodo de la biseccion
    it <- 0
    eps <- .Machine$double.eps^0.25
    r <- seq(b0, b1, length=3)
    y <- c(f(r[1], a, n), f(r[2], a, n), f(r[3], a, n))
    if (y[1] * y[3] > 0)
        stop("f no tiene signos opuestos en los puntos finales")

    while(it < 1000 && abs(y[2]) > eps) {
        it <- it + 1
        if (y[1]*y[2] < 0) {
            r[3] <- r[2]
            y[3] <- y[2]
        } else {
            r[1] <- r[2]
            y[1] <- y[2]
        }
        r[2] <- (r[1] + r[3]) / 2
        y[2] <- f(r[2], a=a, n=n)
        print(c(r[1], y[1], y[3]-y[2]))
    }
