# Distribuciones discretas en R


# Distribucion binomial

N <- 1000
n <- 10
p <- .5
x <- rbinom(N,n,p)
hist(x, 
     xlim = c(min(x), max(x)), 
     probability = TRUE, 
     nclass = max(x) - min(x) + 1, 
     ylab = "Densidad",
     col = 'yellow',
     main = 'Distribucion binomial, n=10, p=.5')
lines(density(x, bw=1), col = 'blue', lwd = 3)


N <- 100000
n <- 100
p <- .5
x <- rbinom(N,n,p)
hist(x, 
     xlim = c(min(x), max(x)), 
     probability = TRUE, 
     nclass = max(x) - min(x) + 1, 
     ylab = "Densidad",
     col = 'yellow',
     main = 'Distribucion binomial, n=100, p=.5')
lines(density(x,bw=1), col = 'red', lwd = 3)


# Distribucion hipergeometrica

N <- 10000
n <- 5
urna <- c(rep(1,10),rep(0,5))
x <- NULL
for (i in 1:N) {
  x <- append(x, sum(sample( urna, n, replace=F )))
}
hist(x, 
     xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
     col='yellow',
     ylab ="Densidad",
     main='Distribucion hipergeometrica, n=20, p=.75; k=5')
lines(density(x,bw=1), col='red', lwd=3)


N <- 10000
n <- 5
x <- rhyper(N, 300, 100, 100)  # help(rhyper)
hist(x, 
     xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
     col='yellow',
     ylab = "Densidad", 
     main='Distribucion geometrica, n=400, p=.75, k=100')
lines(density(x,bw=1), col='red', lwd=3)

# Distribucion Poisson

N <- 10000
x <- rpois(N, 5)
hist(x, 
     xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
     col='yellow',
     ylab ="Densidad",
     main='Distribucion de Poisson, lambda=5')
lines(density(x,bw=1), col='red', lwd=3)

N <- 10000
x <- rpois(N, 20)
hist(x, 
     xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
     col='yellow',
     ylab ="Densidad",
     main='Distribucion de Poisson, lambda=20')
lines(density(x,bw=1), col='red', lwd=3)

# Distribucion geometrica

N <- 10000
x <- rgeom(N, .01)
hist(x, 
     xlim=c(min(x),max(x)), probability=T, nclass=20,
     col='yellow',
     ylab = "Densidad",
     main='Distribucion geometrica, p=.01')
lines(density(x), col='red', lwd=3)

# Distribucion binomial negativa

N <- 10000
x <- rnbinom(N, 10, .5)
hist(x, 
     xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
     col='yellow',
     ylab = "Densidad",
     main='Distribucion binomial negativa, n=10, p=.5')
lines(density(x,bw=1), col='red', lwd=3)
