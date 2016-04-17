# Graficos estadisticos de un conjunto de datos con R

library(ggplot2)

head(faithful) 
waiting <- faithful[,2]
waiting
range(waiting)  ## Obtenemos el minimo y maximo valor en waiting

table(waiting)  ## Datos de waiting en una tabla

--------------------------------------------------------------

interv <-seq(from=40, to = 100, by = 5) 
interv
Tespera <- cut(waiting, interv,  right =FALSE) ##Debemos dejar la frontera derecha abierta  
table(Tespera)
cbind(table(Tespera))
--------------------------------------------------------------
porcentaje <- c(26, 24, 16, 16, 8, 5,5)
names(porcentaje) = c("Python", "R", "JS", "C","Perl","Java", "Bash")
porcentaje
mycolors=c("red","blue","green","orange", "brown", "yellow", "Gray")
pie(porcentaje, col = mycolors)
      
---------------------------------------------------------------
  
barplot(porcentaje, col = mycolors, main = "Principales lenguajes de Programacion")

---------------------------------------------------------------
Tiempo <-c(1,2,3,4,5,6,7)
demanda <-c(8.3, 10.4, 19.0, 17.0, 15.8, 15.3, 19.8)
BID =data.frame(Tiempo, demanda)
BID
## Agregamos puntos
ggplot(BID, aes(x=Tiempo, y=demanda)) + geom_line() +geom_point()

------------------------------------------------------------------
  
edades<- 18:29
estatura<-c(1.66, 1.67,1.78, 1.58, 1.68, 1.80, 1.72, 1.75, 1.61, 1.81, 1.63, 1.71 )
personas <-data.frame(edades = edades, estatura=estatura)
personas
plot(estatura, type ="o", xlab = "edad", col = "blue",
     main = "Estatura de personas de distintas edades (cm)")

-----------------------------------------------------------------
  
set.seed(23)  ##Generadora de numeros aleatorios
dat <- data.frame(xvar = 1:20 + rnorm(20, sd = 3),
                  yvar = 1:20 + rnorm(20, sd = 3),
                  zvar = 1:20 + rnorm(20, sd = 3))
#head(dat)
plot(yvar ~ xvar, dat)

------------------------------------------------------------------
set.seed(23)  ##Generadora de numeros aleatorios
dat <- data.frame(xvar = 1:20 + rnorm(20, sd = 3),
                  yvar = 1:20 + rnorm(20, sd = 3),
                  zvar = 1:20 + rnorm(20, sd = 3))
plot(dat$xvar, dat$yvar)

-----------------------------------------------------------------
  
  ggplot(dat, aes(x=xvar, y=yvar)) +
  geom_point(shape=1) 

------------------------------------------------------------------------
  ggplot(dat, aes(x=xvar, y=yvar)) +
  geom_point(shape=1) +    # Usamos circulos huecos
  geom_smooth(method=lm)   ## Agregamos la linea de regresion lineal 

------------------------------------------------------------------
  
  ggplot(dat, aes(x=xvar, y=yvar)) +
  geom_point(shape=1) +     
  geom_smooth(method=lm,   ## No mostramos la region de confianza
              se=FALSE)

---------------------------------------------------------------------
  
set.seed(23)
Ejemplo  <- rnorm(200)
head(Ejemplo)
hist(Ejemplo)

-----------------------------------------------------------------
  
set.seed(23)
dat <- data.frame(cond = factor(rep(c("A","B"), each=200)), 
                  rating = c(rnorm(200),rnorm(200, mean=.8)))
head(dat)
ggplot(dat, aes(x=rating)) + geom_histogram(binwidth=.5)

---------------------------------------------------------------
  
  
rnorm(n= 100, mean =3, sd=1)
## Generamos datos y producimos un data frame de 12 columnas.
data<-data.frame(dat1=rnorm(100,mean=3,sd=2),
                 dat2=rnorm(100,mean=4,sd=1),
                 dat3=rnorm(100,mean=6,sd=0.5),
                 dat4=rnorm(100,mean=10,sd=0.5),
                 dat5=rnorm(100,mean=4,sd=2),
                 dat6=rnorm(100,mean=4.5,sd=2),
                 dat7=rnorm(100,mean=7,sd=0.5),
                 dat8=rnorm(100,mean=8,sd=3),
                 dat9=rnorm(100,mean=6,sd=0.5),
                 dat10=rnorm(100,mean=5,sd=3),
                 dat11=rnorm(100,mean=8,sd=0.2),
                 dat12=rnorm(100,mean=4,sd=4))
##Creamos el boxplot
boxplot(data, las =2, at =c(1,2,3,4, 6,7,8,9, 11,12,13,14),
        col = c("red","sienna","palevioletred1","royalblue2","red","sienna",
                "palevioletred1", "royalblue2","red","sienna","palevioletred1","royalblue2"))

  

  
  