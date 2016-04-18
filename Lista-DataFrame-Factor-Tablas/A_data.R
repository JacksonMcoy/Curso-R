# Data frames en R

chickwts
head(chickwts, 10)

# columnas de data frames
class(chickwts$feed)
class(chickwts$weight)

# uso de tapply
options(digits = 1)

tapply(chickwts$weight, chickwts$feed, mean)

# grafico de la distribucion de las mediciones agrupadas
# por factores

bloxplot(chickwts$weight ~ chickwts$feed)

----------------------------------------------------

head(morley)

speed <- morley$Speed

# summary: rango, el primer y tercer cuartil, mediana, media.
summary(speed)
sd(speed)

# Dibujamos un histograma para la distribucion de la medida de Speed
par(mfrow =c(1,2))
hist(speed)

----------------------------------------------------
  
# comparando dos muestras
  
# uso de boxsplot para visualizar Speed del data frame morley
# en cada uno de los 5 conjuntos Ept
  
boxplot(morley$Speed ~ morley$Expt)

morley1 <- subset(morley, Expt ==1, Speed)
morley5 <-subset(morley, Expt ==5, Speed)

# Usando los t test cuando la variacion en los vectores 
# normalmente distribuidos como morley.

t.test(morley1$Speed, morley5$Speed)

# conjunto de datos en que la variacion de los vectores no
# no estan normalmente distribuidos

head(airquality)

boxplot(Ozone ~ Month, data =airquality)

airq5 <-subset(airquality, Month ==5)
par(mfrow=c(1,2))
hist(airq5$Ozone)


# usemos el test de wilcoxon para probar la hipotesis
# de que la media de los niveles de ozono en los meses 5 y 8 son iguales.

wilcox.test(Ozone ~ Month, data =airquality, subset = Month %in% c(5,8))

-----------------------------------------------------

# Correlacion (uso de cor.test)
  
require(MASS)
par(mfrow =c(1,2))
plot(Animals$body, Animals$brain)
plot(Animals$body, Animals$brain, log="xy")

# Usando datos lineales y la medicion de correlacion por defecto(pearson)
# probamos cor.test

cor.test(Animals$body, Animals$brain)

# usando el metodo de Spearman y de kendall

cor.test(Animals$body, Animals$brain, method = "spearman")

cor.test(Animals$body, Animals$brain, method = "kendall")

----------------------------------------------------
  
# Analisis de componentes principales (PCA)
  
# Uso de la funcion prcomp() en transformar las 4 variables numericas
# en 4 componentes principales 
  
head(iris)
iris1 <-iris[, -5] # removiendo la columna Species
iris1_pca <- prcomp(iris1, scale = T)
iris1_pca
  

# funcion summary: las proporciones de la varianza a cada componente
# principal y la proporcion acumulada de cada componente agregada

summary(iris1_pca)

# uso de plot y biplot
# biplot: muestra las variables iniciales proyectadas sobre los 2 primeros
# componentes

par(mfrow =c(1,2))
plot(iris1_pca)
biplot(iris1_pca, col=c("gray", "red"))
par(mfrow =c(1,1))


------------------------------------------------------
  
# Clusters
  
# hclust: jerarquia de clusters

help("hclust")
iris1_dist <- dist(iris1) # metodo por defecto
plot(hclust(iris1_dist))


# El algoritmo diana(DIvise ANAlysis Clustering)

library(cluster)
cluster1 <- diana(iris1)
plot(cluster1, which.plots =2, main="Diana  para Iris")


# K-means

iris1_kmeans <- kmeans(iris1, centers = 3)
table(iris1_kmeans$cluster)

centro <- function(cl){
  f <- function(i)colMeans(iris1[cl ==i,])
  x <- sapply(sort(unique(cl)), f)
  colnames(x)<- sort(unique(cl))
  return(x)
}

centro(iris1_kmeans$cluster)