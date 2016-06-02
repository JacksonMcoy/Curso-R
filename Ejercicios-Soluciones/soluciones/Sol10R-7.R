# Calculemos el maximo de la densidad para n>2

# Una manera de proceder es ver los extremos de los intervalos 
# a ser inspeccionados. Usemos los cuantiles 

optimise(function(x) dchisq(x, n), qchisq(c(.05, .95), n), maximum = TRUE, tol = 10^-12)