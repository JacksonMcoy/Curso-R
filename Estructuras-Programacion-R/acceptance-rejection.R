# Metodo aceptacion -rechazo (acceptance-rejection)

n <- 1000
    k <- 0      #contador para accepted(aceptado)
    j <- 0      #iteraciones
    y <- numeric(n)

    while (k < n) {
        u <- runif(1)
        j <- j + 1
        x <- runif(1)  
        if (x * (1-x) > u) {
            # Aceptamos  x
            k <- k + 1
            y[k] <- x
        }
    }

    j

    #comparamos  percentiles
    p <- seq(.1, .9, .1)
    Qhat <- quantile(y, p)   # cuantiles de muestra 
    Q <- qbeta(p, 2, 2)      # cuantiles teoricos
    se <- sqrt(p * (1-p) / (n * dbeta(Q, 2, 2)^2)) 
    round(rbind(Qhat, Q, se), 3)
