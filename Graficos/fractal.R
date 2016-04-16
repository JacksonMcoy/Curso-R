#Funcion que dibuja un fractal llamado fern: helecho


fern <-function(n = 20000) {
        p = c(.85, .92, .99, 1)
        A1 = matrix(c(.84, .04, -.04, .85), nc = 2, byrow = TRUE)
        A2 = matrix(c(.20, -.26, .23, .22), nc = 2, byrow = TRUE)
        A3 = matrix(c(-.15, .28, .26, .24), nc = 2, byrow = TRUE)
        A4 = matrix(c(0, 0, 0, .16), nc = 2, byrow = TRUE)
        b1 = c(0, 1.6)
        b2 = c(0, 1.6)
        b3 = c(0, .44)
        opar = par(bg = "black", mar = c(1, 1, 4, 1))
        x = c(.5, .5)
        plot.new()
        plot.window(xlim = c(-3, 3), ylim = c(0, 10))
        title(main = "Helecho Fractal!", col.main = "white", cex.main = 2)
        for(i in 1:20000) {
            r = runif(1)
            if (r < p[1])
                x = A1 %*% x + b1
            else if (r < p[2])
                x = A2 %*% x + b2
            else if (r < p[3])
                x = A3 %*% x + b3
            else
                x = A4 %*% x
            points(x[1], x[2], pch = 19, cex = .25, col = "white")
        }
        par(opar)
    }

fern()

