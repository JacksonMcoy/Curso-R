# Calculemos la funcion quantil asociada con una 
# variable aleatoria continua. Consideremos
# una funcion de distribucion de un modelo mixto:

# F = p1F1 + p2F2

p <- .4; m1 <- 0; m2 <- 1; s1 <- 1; s2 <- 2
F <- function(x) p*pnorm(x,m1,s1)+(1-p)*pnorm(x,m2,s2)

Finv1 <- function(H,u,xinf=-100,xsup=100){
   cond <- FALSE
  while(!cond){
    xmid <- (xinf+xsup)/2
    if(H(xmid)<u) xinf <- xmid else xsup <- xmid
    cond <- abs(H(xmid)-u)<1e-6
  }
  return(xmid)}

Finv1(F,.95)

# Necesitamos una cota superior e inferior para el cuantil
# Usemos una forma vectorizada de la funcion pero con el fin de tener una
# estimacion precisa, el  codigo podria demorar para funcionar

Finv2 <- function(H,u,n=10000,xinf=-100,xsup=100){
  vx <- seq(xinf,xsup,length=n+1)
  vh <- Vectorize(H)(vx)
  return(min(vx[vh>=u]))}

Finv2(F,.95)

#  Combinemos estos dos algoritmos, ya que este ultimo nos dio una cota superior

Finv <- function(H,u,n=1000,xinf=-100,xsup=100){
  vx <- seq(xinf,xsup,length=n+1)
  vh <- Vectorize(H)(vx)
  xsup <- min(vx[vh>=u])
  xinf <- max(vx[vh<=u])
  cond <- FALSE
  while(!cond){
     xmid <- (xinf+xsup)/2
     if(H(xmid)<u) xinf <- xmid else xsup <- xmid
     cond <- abs(H(xmid)-u)<1e-9
    }
   return(xmid)}


Finv(F,.95)


# R tiene su propia funcion para hacer esto uniroot()

uniroot(function(x) F(x)-.95,interval=c(0,10))$root
