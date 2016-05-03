# Funciones apply de R

?apply

data("mtcars")
head(mtcars)

data(beavers)
head(t(beaver1)[1:4,1:10])


# apply()

apply(t(beaver1), 1, max) # Se aplica apply a las filas (1)

apply(mtcars, 2, mean)    # Se aplica apply a las columnas(2)

head(apply(mtcars, 2, function(r)r%%10))


# lapply()
?lapply

lista1 <- list(a=1:10, b=11:20)
lista1
lapply(lista1, mean)
class(lapply(lista1, mean))

lapply(lista1, sum) # suma de los elementos

# sapply()
?sapply


lista2 <- list(a=5:15, b=16:25)
lista2
sapply(lista2, mean)


# tapply
?tapply

str(mtcars$cyl)
levels(as.factor(mtcars$cyl))

tapply(mtcars$mpg,mtcars$cyl,mean)

# rapply()
?rapply

lista3 = list(a = 1:10, b = 11:20,c=c('python','R','JS','C'))
lista3

rapply(lista3, mean, how = "list", classes = "integer")

rapply(lista3, mean, how = "unlist", classes = "integer")

rapply(lista3, mean, how = "replace", classes = "integer")


# mapply()
?mapply

m1<-matrix(c(rep(1, 4), rep(2, 4), rep(3, 4), rep(4, 4)),4,4)
m1

m2<-mapply(rep,1:4,4)
m2

p<- function(C, k) paste(rep.int(C, k), collapse = "")
utils::str(mapply(p, LETTERS[1:6], 6:1, SIMPLIFY = FALSE))
