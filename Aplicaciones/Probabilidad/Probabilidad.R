# Codigo sobre probabilidad

library(sets)
library(ggplot2)
library(prob)

Omega  = set("a", "b", "c")
# mostramos un conjunto con todos los posibles
# eventos de un experimento  en un espacio muestral Omega
2^Omega

# Espacio muestral
Omega = c(1, 2, 3, 4)
# probabilidades de  4 eventos
p = c(1/2, 1/4, 1/8, 1/8)
# ellos suman 1
sum(p)

Omega = set(1, 2, 3)
# todos los posibles eventos
2^Omega

# tam de todos los posibles eventos 
sapply(2^Omega, length)

# probabilidad de todos los elementos bajo el modelo clasico
sapply(2^Omega, length)/length(Omega)


# Modelo clasico de probabilidad

Omega = set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
# histograma tam vs probabilidades
qplot(sapply(2^Omega, length), xlab = "tam de eventos", binwidth = 0.5, size = I(1/2))

# histograma tam vs probabilidades
qplot(sapply(2^Omega, length)/length(Omega), xlab = "probabilidad de eventos", binwidth = 0.05)


# Uso del paquete prob

tosscoin(1) # lanzamiento de una moneda
tosscoin(3)
S <- tosscoin(2, makespace = TRUE)
S
S[1:3, ]
S[c(2, 4), ]

salidas <- rolldie(1) # lanzamiento de un dado 
salidas
p <- rep(1/6, times = 6)
p
probspace(salidas, probs = p) #espacio muestral


# uso de la funcion sample
help("sample")
sample(1:40, 5)

# Muestreo con reemplazo
sample(c("H","T"), 12, replace=T)

# simulamos con probabilidades no iguales, 90% de exito
sample(c("exito", "fallo"), 10, replace=T, prob=c(0.9, 0.1))

# Simulacion, de 3 lanzamientos de moneda y la probabilidad de 3 caras

experimento <- sample(0:1,3,replace=TRUE)

# Exito
if (sum(experimento)==3) 1 else 0
# Replicacion
n <- 10000 
simlista <- numeric(n) # vector inicial
for (i in 1:n) {
  experimento <- sample(0:1, 3, replace=TRUE)
  exito <- if (sum(experimento)==3) 1 else 0
  simlista[i] <- exito }

mean(simlista) # proporcion de ensayos con 3 caras 

# Simulando la probabilidad condicional del lanzamiento de dos 
# dados y verificar si la suma es 7, el exito se registra si el primer
# dado es 2, y el fracaso si no lo es. 

n <- 10000
ctr <- 0 # contador 
simlista1 <- numeric(n)
while (ctr < n) {
  experimento <- sample(1:6,2,replace=TRUE)
  if (sum(experimento) == 7) { # verificamos si la suma es 7
    exito <- if (experimento[1] == 2) 1 else 0
    ctr <- ctr + 1
    simlista1[ctr] <- exito } }
mean(simlista1)


# Problema (birthday)
# devtools::session_info('DT')

# Si hay 23 personas en la habitacion hay 50% de probabilidad

k = 23
p <- numeric(k)  # creamos un vector numerico vector para almacenar probabilidades
for (i in 1:k)      {
  q <- 1 - (0:(i - 1))/365  
  p[i] <- 1 - prod(q)  }
prob <- p[k]
prob

# Probabilidad  de que al menos 2 personas tengan el mismo cumpleanos en una
# habitacion de k personas

k = 100  
p <- numeric(k)  
for (i in 1:k)  {
  q <- 1 - (0:(i - 1))/365  # 1 - prob(no coincidencias)
  p[i] <- 1 - prod(q)  }
plot(p, main="Prob de que al menos dos personas tenga el mismo HB",
     xlab ="Numero de personas ", ylab = "Probabilidad", col="red")   

# En general

numero.de.personas <-c(seq(1,100,1))
probabilidades <- format(p, digits=3)
probs <- cbind(numero.de.personas, probabilidades )   

# tabla de salida

DT::datatable(probs, rownames=FALSE, options = list(autowidth=TRUE, 
                                sClass="alignCenter", className = 'dt-Center',
                                pageLength=10))


