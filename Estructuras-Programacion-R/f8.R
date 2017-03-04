# Los operadores binarios se escriben entre porcentajes %%

# Escribamos el  5% y 95% de los limites de un  intervalo de confianza,

"%pm%" <- function(x,s) x + c(qnorm(.05),qnorm(.95))*s
100 %pm% 10
