# Ejemplo de una funcion en R

f <- function(x,p,d){
  s <- sum(p*x/(1+d)^(1:length(x)))
  return(s)
}
f
f()

# LLamamos a la funcion con parametros definidos

f(x=c(100,200,100),p=c(.4,.5,.3),d=.05)
f(c(100,200,100),c(.4,.5,.3),.05)
