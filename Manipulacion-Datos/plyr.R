# Manipulacion de datos

# Estrategia SPLIT -APPLY -COMBINE 
ejem.tab <- read.csv("iris.csv")
ejem.tab
head(ejem.tab)

# Calculamos el promedio del ancho y longitud
# del sepalo y petalo para tres diferentes tipos
# de iris.

# Dividiendo los datos
iris.setosa <- subset(ejem.tab, Especies="setosa",
                      select = c(Sepalo.Longitud, Sepalo.Ancho, Petalo.Longitud, Petalo.Ancho))

iris.versicolor <- subset(ejem.tab, Especies="versicolor",
                          select = c(Sepalo.Longitud, Sepalo.Ancho, Petalo.Longitud, Petalo.Ancho))

iris.virginica<- subset(ejem.tab, Especies="virginica",
                        select = c(Sepalo.Longitud, Sepalo.Ancho, Petalo.Longitud, Petalo.Ancho))

# Aplicando la funcion mean para calcular la media

setosa <-colMeans(iris.setosa)
versicolor <- colMeans(iris.versicolor)
virginica <-colMeans(iris.virginica)

# Combinamos los resultados 

rbind(setosa = setosa, versicolor = versicolor, virginica = virginica )

# Otra forma, con menos codigo: Usando la base de datos iris
# del paquete base

head(iris) 
iris.split <- split(iris,as.factor(iris$Species))
iris.apply <- lapply(iris.split,function(x)colMeans(x[-5]))
iris.combine <- do.call(rbind,iris.apply)
iris.combine

# El paquete plyr

mtcars
library(plyr)
ddply(mtcars, .(mpg), function(x)colMeans(x))
ddply(iris, .(Species), function(x) colMeans(x[-5])) # con la base de datos iris

# La clase de iris3 es un array
library(plyr)
class(iris3)
dim(iris3)
iris_media <- adply(iris3, 3, colMeans)
class(iris_media)

# Calculando la media, pero la salida es un array de dos dimensiones
iris_media <- aaply(iris3, 3, colMeans)
class(iris_media)
iris_media

# Calculando la media, pero la salida es una lista
iris_media <- alply(iris3,3, colMeans)
class(iris_media)
iris_media

iris_media

# Convertiendo un array de 3 dimensiones un data frame de dos
iris_dato <- adply(iris3, .margins = 3)
class(iris_dato)

# Funciones multiargumento

parametro.dato <- data.frame(n=c(25,50,100,200,400),
                             mean=c(0,2,3.5,2.5,0.1),
                             sd=c(1,1.5,2,5,2))
parametro.dato

# Variable normal aleatoria generada usando R

set.seed(12345)
dat1 <- list()
for(i in 1: nrow(parametro.dato))
{
  dat1[[i]] <- rnorm(n = parametro.dato[i, 1], 
                     mean=parametro.dato[i,2], sd = parametro.dato[i,3])
}

# Calculando la media desde los nuevos datos generados

est_media <- lapply(dat1, mean)
est_media

# Usando lo mismo pero con el paquete plyr

dat2 <- mlply(parametro.dato, rnorm)
est_plyr <- llply(dat2, mean)
est_plyr

# Comparando el paquete base de R y plyr

# 1. Funcion que calcula operadores estadisticos basicos

estadisticas <- function(x)
{
  resultados <- data.frame(min=apply(x,2,min), 
                           media = apply(x,2,mean), 
                           mediana = apply(x,2,median),
                           max = apply(x,2,max),
                           sd = apply(x,2,sd))
  return(resultados)
}


# Inicializamos la salida 
estadisticas1 <-list()
for(i in 1:dim(iris3)[3])
{
  sub_datos <- iris3[,,i]
  estadisticas2 <- estadisticas(sub_datos)
  estadisticas1[[i]] <- estadisticas2
}
# clase del objeto de salida
class(estadisticas1)
estadisticas1

# Aplicando la funcion alply() del paquete plyr

estadisticas3 <-alply(iris3,3, estadisticas)
class(estadisticas3)
estadisticas3

