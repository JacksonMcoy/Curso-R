# Proceso de Poisson

l <- 2
t <- 3
u <- 100
pp <- numeric(10000)
for (i in 1:10000) {
  N <- rpois(1, l * u)
  Un <- runif(N, 0, u)      
  Sn <- sort(Un)                
  n <- min(which(Sn > t))      
  pp[i] <- n - 1                
}

pp <- replicate(10000, expr = {
  N <- rpois(1, l * u)
  Un <- runif(N, 0, u)      
  Sn <- sort(Un)                
  n <- min(which(Sn > t))      
  n - 1  })                     

c(mean(pp), var(pp))   
