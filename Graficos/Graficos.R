# Tutorial de ggplot2

library(ggplot2)
library(graphics)

# Usaremos conjuntos de datos desde el paquete datasets de R

names(faithful)
summary(faithful)

# Usando la base de datos mtcars y mpg

summary(mtcars)

names(mpg)

# Ejemplo para dibujar usando paquete  graphics

plot(x = DF$speed.values, y = DF$acc.values)
title(main = "Velocidad vs. aceleracion", geom = "points")

# El codigo en ggplot2 es el siguiente, usando un data frame

DF = data.frame(speed = speed.values, acc = acc.values)
ggplot(DF, aes(x = speed, y = acc), data = DF) +
  geom_point()


msleep
head(msleep)

a <- ggplot(data = msleep, aes(x = bodywt, y = sleep_total))
a <- a + geom_point()
a <- a + xlab("") + ylab("")  + ggtitle("Datos  de algunas especies")
a

# Podemos guardar el dibujo usando

ggsave("dormir_animales.png", plot = a, width = 4, height = 4)

# Dividir el dato de diferentes maneras

a <- ggplot(data = msleep, aes(x = bodywt, y =sleep_total, col =vore))
a <- a + geom_point()
a <- a +xlab("") + ylab("") + ggtitle("Datos de algunas especies")
a

# Transformando variables

a <- ggplot(data = msleep, aes(x = log(bodywt), y = sleep_rem/sleep_total, col =vore))
a <- a + geom_point()
a <- a + xlab("Log ") + ylab("") + ggtitle("Datos de algunas especies") + scale_color_discrete(name = "Level")
a


# Podemos cambiar opciones con llamadas a geom

a <- ggplot(data = msleep, aes(x = log(bodywt), y = sleep_rem/sleep_total, col =vore))
a <- a + geom_point(size = 3)
a <- a + xlab("Log ") + ylab("") + ggtitle("Datos de algunas especies") + scale_color_discrete(name = "Level")
a

# Dividamos la manera en que dividimos los datos
# Facets: facet_wrap

a <- ggplot(data = msleep, aes(x = log(bodywt), y = sleep_rem/sleep_total))
a <- a + geom_point(size = 5)
a <- a + facet_wrap(~vore)
a <- a + xlab("Log ") + ylab("") + ggtitle("Datos de algunas especies")
a

#Usando facet_grid

a <-ggplot(ddata = msleep, aes(x = log(bodywt), y = sleep_rem/sleep_total))
a <- a + geom_point(size = 2)
a <- a + facet_grid(conservation~ vore)
a <- a + xlab("Log") + ylab("REM") + ggtitle("Datos de algunas especies")
a

economics
head(economics)

a <-ggplot(data = economics, aes(x = date, y = unemploy))
a <- a + geom_line()
a

# Podemos agregar transformaciones estadisticas a esta serie

a <- ggplot(data = economics, aes(x = date, y = unemploy))
a <- a + geom_line()
a <- a + geom_smooth()
a


# Ejemplo de Manas A. Pathak: Beginning Data Science with R

# Cargando datos de analisis 

data1 <- read.csv('teams.csv')
attach(data1)

# Dibujamos un diagrama de dispersion

plot(payroll, wins)

# Dividiendo grupos

s1 <- which(league == 'NL')
s2 <- which(league == 'AL')
plot(payroll[s1], wins[s1], xlim = range(payroll), ylim = range(wins), xlab = 'payroll', ylab = 'wins', col = "blue")
points(payroll[s2], wins[s2], pch = 2, col = "dark red")

# Dividamos los datos  en lineas (clasificacion)

plot(payroll, wins, pch = as.numeric(pct >= 0.5))
lines(range(payroll), c(81, 81), lty =2)

# Agregando una leyenda 

legend('bottomleft', c('NL', 'AL'), pch = c(1, 2), title = 'leagues')


# Dibujando un grafico de barras

barplot(by(payroll, league, sum))

par(xpd = T, mar = par()$mar +c(0, 0, 0, 4))
barplot(by(payroll, list(division, league), sum), col = 2:4)
legend(2.5, 8e8, c("Central", "East", "West"), fill = 2:4)

# Dibujando un grafico circular

pie(by(as.numeric(payroll), league, sum))

labels <- c('AL Central', 'AL East', 'AL West', 'NL Central', 'NL East', 'NL West')
pie(as.numeric(by(payroll, list(division, league), sum)), labels)

# Usando la libreria ggplot2

qplot(payroll, wins, col = league, shape =division)

# Grafico de barras usando ggplot2

qplot(league,weight=payroll,ylab='payroll',fill=division, position = 'dodge')

# usando el parametro facet, para dividir el grafico de barra

qplot(division, weight = payroll, ylab = 'payroll', facets = .~league)


# Graficos estadisticos de un conjunto de datos con R
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


# Ejemplo de como graficar un fractal llamado fern: helecho


fern <-function(n = 20000) {
  p = c(.85, .92, .99, 1)
  A1 = matrix(c(.84, .04, -.04, .85), nc = 2, byrow = TRUE)
  A2 = matrix(c(.20, -.26, .23, .22), nc = 2, byrow = TRUE)
  A3 = matrix(c(-.15, .28, .26, .24), nc = 2, byrow = TRUE)
  A4 = matrix(c(0, 0, 0, .16), nc = 2, byrow = TRUE)
  b1 = c(0, 1.6)
  b2 = c(0, 1.6)
  b3 = c(0, .44)
  opar = par(bg = "black", mar = c(1, 1, 4, 1))
  x = c(.5, .5)
  plot.new()
  plot.window(xlim = c(-3, 3), ylim = c(0, 10))
  title(main = "Helecho Fractal!", col.main = "white", cex.main = 2)
  for(i in 1:20000) {
    r = runif(1)
    if (r < p[1])
      x = A1 %*% x + b1
    else if (r < p[2])
      x = A2 %*% x + b2
    else if (r < p[3])
      x = A3 %*% x + b3
    else
      x = A4 %*% x
    points(x[1], x[2], pch = 19, cex = .25, col = "white")
  }
  par(opar)
}

fern()


