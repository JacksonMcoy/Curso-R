# Usemos la funcion cat() para imprimir comentarios y valores
# El operador '<<' puede ser asignado a entornos globales

s <- function(X,Y){
  beta <- coefficients(lm(Y~ X))[2]
   cat("La pendiente es",beta,"\n")
   return(as.numeric(beta))
   }
s(speed,dist)
