# Almacenando un objeto de R en una variable y viendo
# el modo.

num.obj <- seq(from=1, to=10, by=2)
mode(num.obj)

logical.obj <-c(TRUE,TRUE,FALSE,TRUE, FALSE)
mode(logical.obj)

character.obj <-c("a", "b", "c")
mode(character.obj)

# Objetos R conteniendo elementos numericos y logicos

x1 <- c(1,3, TRUE, 5, FALSE,9)
x1
mode(x1)

# Objeto R, conteniendo elementos numericos, logicos y de caracter

x2 <-c(1, 2, TRUE, FALSE, "a")
x2
mode(x2)

# Otras maneras de testear los objetos de R.

num.obj <- seq(from=1,to=10, by=2)
logical.obj <-c(TRUE,TRUE,FALSE,TRUE,FALSE)
character.obj <-c("a", "b", "c")

is.numeric(num.obj)
is.logical(num.obj)
is.character(num.obj)

mode(mean)
is.function(mean)

# La funcion class() nos dice como las funciones incluyendo las
# genericas trabajan

num.obj <- seq(from=1,to=10, by=2)
logical.obj <-c(TRUE,TRUE,FALSE,TRUE,FALSE)
character.obj <-c("a", "b", "c")

class(num.obj)
class(logical.obj)
class(character.obj)

# El modo de un objeto nos dice como ellos son almacenados.

num.obj <-seq(from=1, to=10, by=2)
set.seed(1234)
mat.obj <- matrix(runif(9),ncol=3,nrow=3)
mode(num.obj)
mode(mat.obj)

class(num.obj)
class(mat.obj)
# Imprimimos un objeto numerico
print(num.obj)
# Imprimimos un objeto matriz
print(mat.obj)


# Usando la clase factor en datos categoricos

caracter.obj <- c("a", "b", "c")
caracter.obj

is.factor(caracter.obj)

# Convirtiendo objetos caracteres en objetos factor usando 
# as.factor()

factor.obj <- as.factor(caracter.obj)
factor.obj

is.factor(factor.obj)
mode(factor.obj)
class(factor.obj)

# Creando vectores numericos con la funcion c

num.vec <- c(1,2,4,6)
num.vec
mode(num.vec)
class(num.vec)
is.vector(num.vec)

# Si creamos elementos numericos y caracteres, el resultado es un vector de caracteres

num.caracteres.vec <- c("mili", 2, 3)
num.caracteres.vec
mode(num.caracteres.vec)
class(num.caracteres.vec)
is.vector(num.caracteres.vec)

# Combinando multiples vectores

comb.vec <- c(num.vec, num.caracteres.vec)
mode(comb.vec)

# Creando vectores nombrados
nombre.num.vec <- c(x1=1, x2=2,x3=5)
nombre.num.vec

# Un vector de un unico elemento
unico.vec <- 9
is.vector(unico.vec)

# Creando un vector de numeros y convertirlos 
# a tipos caracter y logicos

num.vec.1 <- c(-3, -2, -1, 0, 1, 2, 3)
num.vec.1
num.char.1 <- as.character(num.vec.1)
num.char.1
num.log.1 <- as.logical(num.vec.1)
num.log.1

# Creando vectores de caracteres y convertirlos
# a numerico y logico

char.vec1 <- c("1", "3", "five", "7")
char.vec1
char.num1 <- as.numeric(char.vec1)
char.num1
char.log1 <- as.logical(char.vec1)
char.log1

# Creando un vector logico y convirtiendo
# a un vector de caracteres

log.vec.1 <- c(TRUE,FALSE, FALSE,TRUE, TRUE)
log.vec.1
log.char.1 <- as.character(log.vec.1)
log.char.1


#  Vectores

h <- 170
h[2] <- 234
h[3] <- 123

h

l<- c("Python", "R", "C++", "MongoDb")
l

v.logico <- c(TRUE, FALSE, FALSE, TRUE)
edad <- c(33, 28, 20)

# El vector logico puede ser usado como un selector de 
# filas de edad de la siguiente manera

edad[v.logico]


# Factor y Variables Categoricas
# Las variables factor, toma solo un numero limitado
# de elementos....

factor1 <- factor(c(1,2,3,4,5,6,7,8,9))
factor1
levels(factor1)
labels(factor)
labels(factor1)

# Creando un factor con levels para mostrar
# En una variable factor, los valores por si mismo son 
# almacenados como vectores numericos,  mientras que los lebels
# almacenados  como caracteres

factor2 <- factor(c(1,2,3,4,5,6, 7,8,9), labels=letters[1:9])
factor2
levels(factor2)
labels(factor2)

# Creando un factor numerico y tratando de encontrar la media

num.factor <- factor(c(5,7,9,5,6, 7,3,5,3, 9,7))
num.factor
mean(num.factor)

#Warning message:
#  In mean.default(num.factor) :
#  argument is not numeric or logical: returning NA

# Para resolver el problema de las operaciones, se puede usar
# la funcion as.numeric(), pero que solo convertira los valores
# internos del factor, pero no los valores deseados.

num.factor <- factor(c(5,7,9,5,6, 7,3,5,3, 9,7))
num.factor
as.numeric(num.factor)
levels(num.factor)
as.character(num.factor)

# Para convertir el "num.factor" a numerico usamos dos metodos

mean(as.numeric(as.character(num.factor)))

mean(as.numeric(levels(num.factor)))


# Data Frame 

var1<-c(12, 34,67, 45, 90)
var2 <-c(34, 23, 18, 80, 37)
var3 <- c("Python", "R", "Java", "Switf", "C")
var4 <- factor(c("Pro1", "Pro1", "Pro2", "Pro2", "Pro1"))

# Cuando creamos un data frame y alguna de la clase columna
# caracter, automaticamente es convertida en factor (Operacion de R por defecto)

lan <- data.frame(var1,var2, var3, var4)
lan

# Para prevenir esta conversion usamos el argumento: stringsAsFactors=FALSE 

# Clases de cada columna antes de crear el data frame

class(var1)
class(var2)
class(var3)
class(var4)

# Clases de cada columna despues de crear el data frame

class(lan$var1)
class(lan$var2)
class(lan$var3)
class(lan$var4)

# Creamos un data frame especificando as.is=TRUE

lan1 <- data.frame(var1, var2, var3, var4, stringsAsFactors = FALSE)
lan1

class(lan1$var3)

# Para acceder a los elementos de un array podemos usar el signo dolar:
# lan1$var1

# Otra manera de hacer eso es
# 1. El data frame seguido  por doble corchete con el nombre de la variable 
#  entre comillas dentro: lan1[["var1"]]
#
# 2. El data frame seguido por corchetes con el indice de la columna 
# por ejemplo: lan1[, 1]
#
# 3. La funcion attach() permite acceder a las variables como objetos separados
# de R. Cuando usamos attach(), debemos usar detach() para remover variables 
# individuales del entorno de trabajo.

rm(var1); rm(var2); rm(var3); rm(var4)
attach(lan1)
var1
class(var3)
detach(lan1)
var1

# Matrices
# Conversion de data frame a matrix

mat.lan <- as.matrix(lan)
mat.lan

class(mat.lan)
mode(mat.lan)

# La multiplicacion matricial no es posible con esta matriz creada 

t(mat.lan)%*% mat.lan

# creando una matriz con elementos numericos

set.seed(12345)
num.mat <- matrix(rnorm(9), nrow=3,ncol=3)
num.mat

class(num.mat)
mode(num.mat)

# Multiplicacion usual de matrices

t(num.mat) %*% num.mat

# Arreglos (arrays)

mat.arr <- array(dim=c(2,2,3))
set.seed(12345)
mat.arr[, , 1] <- rnorm(4)
mat.arr[, , 2] <- rnorm(4)
mat.arr[, , 3] <- rnorm(4)
mat.arr

# Listas

var1 <- c(2,3,4,5,6)
var2 <- c(7,8,9,0,1)
var3 <- c("Python", "R", "C/C++", "Java", "Lisp")
var4 <- c("Pro1", "Pro2", "Pro2", "Pro2", "Pro1")
lan3 <- data.frame(var1, var2, var3,var4)
mat.arr <- array(dim=c(2,2,3))

set.seed(12345)
mat.arr[, , 1] <- rnorm(4)
mat.arr[, , 2] <- rnorm(4)
mat.arr[, , 3] <- rnorm(4)

ob.lista<- list(elem1=var1, elem2=var2, elem3=var3, elem4=var4, elem5=lan3, 
                elem6=mat.arr)
ob.lista

# Para encontrar el primer elemento de un objeto listo obj.lista[[1]].

ob.lista[[1]]

# Missing Values
# Usando las funciones is.na() y any()

missing.datos <- data.frame(v1=c(1,NA,0,1),v2=c("Python","R",NA,"Python"))
missing.datos
is.na(missing.datos$v1)
is.na(missing.datos$v2)
any(is.na(missing.datos))