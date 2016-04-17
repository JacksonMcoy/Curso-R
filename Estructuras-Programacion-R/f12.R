# Distribucion Geometrica, en ejemplo

n <- 1000
p <- 0.25
u <- runif(n)
k <- ceiling(log(1-u) / log(1-p)) - 1

# Es mas eficiente
k <- floor(log(u) / log(1-p))
