# Adquiriendo data en R

# Usando la funcion read.csv() para importar
# un archivo .csv

Ejemplo.csv <- read.csv("Ejemplo1.csv")
Ejemplo.csv

# Si un archivo .csv contiene valores numericos y 
# caracteres, las variables de caracteres son convertidos
# a un tipo factor (usamos stringAsFactors = FALSE)

iris_a <- read.csv("iris.csv", stringsAsFactors = FALSE)
str(iris_a)

# Usando un separador con el atributo

iris_a <- read.csv("iris.csv", stringsAsFactors = FALSE, sep=";")
str(iris_a)

# Podemos usar read.csv con sep ="\t" o podemos usar read.table()

ejem.tab <- read.csv("Ejemplo.txt", sep = "\t")
ejem.tab
ejem.tab1 <- read.table("Ejemplo.txt", header = TRUE)
ejem.tab1

# Podemos usar la funcion load(). Cargamos los elementos de un archivo .rda
load("grades.rda")
objects()

# Operaciones con vectores y matrices

# Usando la funcion runif() para generar numeros aleatorios desde
# la distribucion uniforme estandar

set.seed(1234)
matriz1 <- matrix(rnorm(12), ncol=3)
matriz2 <- matrix(rnorm(9), ncol=3)
matriz3<- matrix(runif(9), ncol = 3)

# Adicion de matrices
matriz2 + matriz3 

matriz1 + matriz2

# Multiplicacion de matrices 
matriz1 %*% matriz2

# Error en la multiplicacion * (componente a componente)
matriz1 * matriz2

# Version corregida en la multiplicacion componente a componente
matriz2 * matriz3

# Multiplicacion usual de multiplicacion de matrices

matriz2 %*% matriz3


# Manipulacion de Factores

char.obj <- "abecedario"

# Creando una variable factor usando la funcion substring().
# La funcion nchar() da el numero de caracteres de un objeto de tipo caracter

factor.obj1 <- factor(substring(char.obj, 1:nchar(char.obj),1:nchar(char.obj)), levels=letters)

# Mostrando levels de la variable factor
levels(factor.obj1)

# Usamos la funcion table() para mostrar las letras que no pertenecen a las
# subcadenas

table(factor.obj1)
factor.obj1


factor.obj2 <- factor(factor.obj1)
levels(factor.obj2)
table(factor.obj2)
factor.obj2


# Factores desde variable numericas

# Usamos la funcion cut() para producir factor desde variables numericas

set.seed(1234)
numvar <- rnorm(100)

num.to.factor <- cut(numvar, breaks=5)
class(num.to.factor)
table(num.to.factor)

# Creando un factor con las etiquetas dadas
num.to.factor1 <- cut(numvar,breaks=5,labels=c("lg","lmg", "mg", "um", "hg"))
data.frame(table(num.to.factor1))

# Creando una variable factor usando la declaracion condicional

num.to.factor2 <- factor(ifelse(numvar <= -1.37, 1,
                        ifelse(numvar<=-0.389,2,ifelse(numvar<=0.592,3,ifelse
                              (numvar<=1.57,4,5)))),labels=c("(-2.35,-1.37]", 
                                                             "(-1.37,-0.389]", "(-0.389,0.592]",
                                                             "(0.592,1.57]",
                                                             "(1.57,2.55]"))

# Mostrando la data usando la funcion table()
table(num.to.factor2)
num.to.factor2


# Usando el paquete lubridate

library(lubridate)

# Creamos un objeto date, usando la funcion mdy()

mdy("Jan-01-1970")

# Objetos date heterogeneos

ht.dato <- c(20090101, "2009-01-02", "2009 01 03", "2009-1-4",
       "2009-1, 5", "Creado en  2009 1 6", "200901 !!! 07")
ymd(ht.dato)

# Algunas operaciones usando el paquete lubridate

date1<-dmy("2-10-1988")
date1
month(date)<- 5
date1

tiempo.actual <- now()
tiempo.actual

tiempo.actual_gmt <- with_tz(tiempo.actual, "GMT")
tiempo.actual_gmt

# 'redondeando' las fechas al dia, mes, año mas cercano
round_date(tiempo.actual_gmt, "day")
round_date(tiempo.actual_gmt, "month")
round_date(tiempo.actual_gmt, "year")

# Cambiando el tiempo de zona, desde GMT a EST

date2 <- ymd("20131222")
date2
with_tz(date2, "EST")

# Otras operaciones con lubridate 

date3 <- ymd("20151122")
year(date3)
month(date3)  
month(date3,label=T)
month(date3, label=T, abbr=F)
week(date3)
day(date3)
mday(date3)
yday(date3)  # un dia del año
wday(date3)
wday(date3, label=T)
tz(date3)  # Acceder al tiempo de Zona

# Uso de las funciones hour(), minute() y second()
hour(date3)
minute(date3)
second(date3)

# Cambiando el tiempo de zona de date3, se obtiene un valor diferente
hour(with_tz(date3,"EST"))

# Subindices y subconjuntos

# Creando un vector de 10 elementos
vec10 <-c(2,4,7,1,8,9,2,12,6,3)
vec10[3]
vec10 > 4 
vec10[vec10 > 4] # Mostrando valores mayores que 4
vec10[-2]        # Eliminando el segundo elemento 4

# Data frame con dos variables

df2<- data.frame(d1=c(2,7,8,9, 1),d2 = c(-4,6,3,5,9))
df2
df2[1, ] # Accediendo a la primera fila
df2[, 1] # Accediendo a la primera columna
df2[1,1] # Accediendo a la primera fila y la tercera columna

# Listas

list.obj <- list(dat =df2, vec.obj=c(2,5,6), "Milagros")
list.obj
list.obj[[3]] # Accediendo al tercer elemento de la lista
list.obj[[2]][2] # Accediendo a un elemento individual

# Accediendo a un conjunto de datos desde un objeto lista
list.obj$dat