library(Matrix)
library(limSolve)


# resolviendo sistemas lineales con solve

options(digits = 3)
set.seed(3)

ma<- matrix(runif(16), nrow = 4)
m

b = runif(4)
b

# resolviendo Ax =b

solve(ma, b)

ma%*%solve(ma, b) 

-------------------------------------------------
  
# Matrices inversas 

set.seed(333)
h <- matrix(runif(16), nrow = 4)
h
minv <- solve(h)
minv
minv%*%h

zapsmall(minv%*%h)
  
--------------------------------------------------
# Matrices singulares
  
Msingular <- matrix(c(1,2,-1,-2,2,1,1, -1, 1, -1, 2,1,1,3,-2,-3), nrow = 4, byrow = T)
Msingular

b<-c(-1,4,5, -3)
solve(Msingular, b)
  
--------------------------------------------------
  
# Matrices sparse

# Matriz tridigonal

n = 11
M = matrix(n, n, data = 0)

aa = rep(1,n) # elementos 1's 
aa[1] = aa[n] = 0 # excepto el primero y el ultimo

# Establecemos la diagonal

bb = rep(-1.99, n)
bb[1] = bb[n] = 1

# Ponemos 1's arriba de la diagonal

cc = rep(1, n)
cc[1] = cc[n] = 0
cc = cc[-n]

# Mx =d. Hallamos d

d = rep(0,n)
d[1] = 0.5
d[n] = 0.76

# Formamos la matriz M

M[1,1:2] = c(bb[1], cc[1])
M[n, (n-1):n] = c(aa[n -1], bb[n])
for (i in 2:(n-1))M[i, (i-1):(i+1)] = c(aa[i-1],bb[i], cc[i])

options(digits = 3)

# Solve

soln = solve(M,d)
soln

--------------------------------------------------------

# Uso de Solve.tridiag del paquete limSolve.

require(limSolve)
n = 10001

aa = rep(1,n)
aa[1] = aa[n] = 0
aa = aa[-1]

bb = rep(-1.99, n)
bb[1] = bb[n] = 1


cc = rep(1,n)
cc[1] = cc[n] = 0
cc = cc[-n]

# rhs del sistema

d = rep(0,n)
d[1] = 0.5
d[n] = 0.69

tri.soln <- Solve.tridiag(aa, bb, cc, d)
tri.soln

-----------------------------------------------------
# Descomposicion de matrices
  

# Descomposicion QR para matrices no cuadradas

set.seed(321)
A <-matrix((1:12) +rnorm(12), nrow = 4)
A
b<-2:5
qr.solve(A,b)  #SOlucion en el sentido de minimos cuadrados

# Descomposicion QR de A

qr(A)

# Sistemas indeterminado de 3 ecuaciones y 4 incognitas

set.seed(321)
A <- matrix((1:12) +rnorm(12), nrow = 3)
b <- 3:5

qr.solve(A,b)

solve(qr(A, LAPACK=TRUE), b)

----------------------------------------------------
  
# SVD (descomposicion por valores singulares)
  
set.seed(13)
A <- matrix(rnorm(30), nrow = 6)
svd(A)


----------------------------------------------------
  
# Descomposicion de autovectores y autovalores
  
options(digits = 3)

M <-matrix(c(2, -1, 0, -1, 2, -1, 0, -1, 2), nrow = 3, byrow = TRUE)
eigen(M)

----------------------------------------------------
  
# Descomposicion LU

options(digits = 3)
set.seed(1)

M <- Matrix(round(rnorm(9), 2), nrow=3)
M

LU1<-lu(M)
str(LU1)

----------------------------------------------------

# Descomposicion de Cholesky
  
M <-matrix(c(2, -1, 0, -1, 2, -1, 0, -1, 2), nrow = 3, byrow = TRUE)    
chol(M)

-----------------------------------------------------
  
# Bloque de matrices
  
# usaremos Solve.block y la rutina FORTRAN colrow(help(Solve.block))
  
AA         <- matrix (nrow = 12, ncol = 12, 0)
AA[1,1:4]  <- c( 0.0,  -0.98, -0.79, -0.15)
AA[2,1:4]  <- c(-1.00,  0.25, -0.87,  0.35)
AA[3,1:8]  <- c( 0.78,  0.31, -0.85,  0.89, -0.69, -0.98, -0.76, -0.82)
AA[4,1:8]  <- c( 0.12, -0.01,  0.75,  0.32, -1.00, -0.53, -0.83, -0.98)
AA[5,1:8]  <- c(-0.58,  0.04,  0.87,  0.38, -1.00, -0.21, -0.93, -0.84)
AA[6,1:8]  <- c(-0.21, -0.91, -0.09, -0.62, -1.99, -1.12, -1.21,  0.07)
AA[7,5:12] <- c( 0.78, -0.93, -0.76,  0.48, -0.87, -0.14, -1.00, -0.59)
AA[8,5:12] <- c(-0.99,  0.21, -0.73, -0.48, -0.93, -0.91,  0.10, -0.89)
AA[9,5:12] <- c(-0.68, -0.09, -0.58, -0.21,  0.85, -0.39,  0.79, -0.71)
AA[10,5:12]<- c( 0.39, -0.99, -0.12, -0.75, -0.68, -0.99,  0.50, -0.88)
AA[11,9:12]<- c( 0.71, -0.64,   0.0,  0.48)
AA[12,9:12]<- c( 0.08, 100.0, 50.00, 15.00)
AA

# El vector b del sistema Ax =b, es


b <- c(-1.92, -1.27, -2.12, -2.16, -2.27,  -6.08,
       -3.03, -4.62, -1.02, -3.52,  0.55, 165.08)

# La matrix AA es divida en bloques

bl1  <- matrix(nrow = 2, ncol = 4, data = AA[1:2, 1:4] )
bl1

bl2  <- matrix(nrow = 2, ncol = 4, data = AA[11:12, 9:12])
bl2

bl3 <- matrix(nrow = 4, ncol = 8, data = AA[3:6  , 1:8] )
bl3

bl4 <- matrix(nrow = 4, ncol = 8, data = AA[7:10 , 5:12])
bl4

# Combinamos los bloques en un array 4x2x2, ya que cada uno tiene
# una dimension de 4 x 8

ar <- array(dim=c(4, 8, 2), data=c(bl3, bl4))
ar

# overlap: es la suma del numero de filas de bl1 y bl2
# y se produce un vector de 12 1's.

Solve.block(bl1, ar, bl2, b, overlap = 4)







