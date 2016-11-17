# Programacion orientada a objetos en R

# Los objetos basicos corresponden a las clases
# logical, numeric, character y complex

class(23)
class("Milagros")
class (list(1, 2, 1))
class(TRUE)
class(1 +3i)

# Objetos mas complejos, la clase matrix

class(matrix( c(2, 4, 3, 1, 5, 7), nrow=2, ncol=3,byrow = TRUE))
class(matrix(letters[1:6], nc = 3))

# Ejemplo

puntos <- list(x = round(rnorm(4), 2), y = round(rnorm(4), 2))
puntos 

# Vinculamos una clase a la lista puntos

#class(puntos) = "coordenadas" # No recomendable
#puntos 


# Funcion constructor

coordenadas <- function(x, y)
  {
    if (!is.numeric(x) || !is.numeric(y) ||
        !all(is.finite(x)) ||
        !all(is.finite(y)))
      stop("coordenas invalidas")
    if (length(x) != length(y))
      stop("la longitud de las coordenas difiere")
    puntos = list(x = x, y = y)
    class(puntos) = "coordenadas"
    puntos
}

# creamos puntos desde una clase

puntos <- coordenadas(x = round(rnorm(5), 2), y = round(rnorm(5), 2))
puntos 

# Definiendo un descriptor de acceso (accessor function)

xcoords <- function(obj) obj$x
ycoords <- function(obj) obj$y

xcoords(puntos)
ycoords(puntos)

# Funciones genericas y metodos 

print.coordenadas <-
  function(obj) {
    print(paste("(",
                format(xcoords(obj)),
                " , ",
                format(ycoords(obj)),
                ")", sep = " "),
          quote = FALSE)
  }
puntos 

length.coordenadas <-
  function(obj) length(xcoords(obj))
length(puntos)

# Creando funciones genericas

fgenerica<-
  function(obj)
    UseMethod("bbox")

fgenerica.coordenadas <-
  function(obj) {
    bb = rbind(range(xcoords(obj)),
               range(ycoords(obj)))
    dimnames(bb) = list(c("x:", "y:"),
                        c("min", "max"))
    bb
  }

fgenerica(puntos)

# Agregando valores  a las cooordenas. Funcion constructor

vcoordenadas <-
  function(x, y, v)
  {
    if (!is.numeric(x) || !is.numeric(y) ||
        !is.numeric(v) ||
        !all(is.finite(x)) ||
        !all(is.finite(y)))
      stop("Coordenas invalidas")
    if(length(x) != length(y) ||
       length(x) != length(v))
      stop("el argumento longitud es diferente")
    puntos = list(x = x, y = y, v = v)
    class(puntos) = c("vcoordenadas", "coordenadas")
    puntos
  }

puntos <- vcoordenadas(x = round(rnorm(5), 2),
              y = round(rnorm(5), 2),
              v = round(runif(5, 0, 100)))

puntos

# Definiendo un descriptor de acceso (accessor function)


valores <- function(obj) obj$v
valores(puntos)
puntos


# Creando ahora una funcion generica(print)

print.vcoordenadas <-
  function(obj) {
    print(paste("(",
                format(xcoords(obj)),
                ", ",
                format(ycoords(obj)),
                "; ",
                format(valores(obj)),
                ")", sep = ""),
          quote = FALSE)
  }

puntos 

fgenerica(puntos)

# Agregamos algunos metodos (group method) a los coordenadas vcoordenadas: math

Math.vcoordenadas <-
  function(x)
    vcoordenadas(xcoords(x),
            ycoords(x),
            get(.Generic)(valores(x)))

cos(puntos)
sin(puntos)
sqrt(puntos)
log(puntos)
exp(puntos)
abs(puntos)

# Operaciones aritmeticas usando (group method) ops

condicion_operacion <- 
  function(e1, e2)
    (length(valores(e1)) == length(valores(e2))
     || all(xcoords(e1) == xcoords(e2))
     || all(ycoords(e1) == ycoords(e2)))


Ops.vcoordenadas <-
  function(e1, e2) {
    if (!condicion_operacion(e1, e2))
      stop("no cumple la condicion de las operaciones")
    else vcoordenadas(xcoords(e1),
                       ycoords(e2),
                       get(.Generic)(valores(e1),
                                    valores(e2)))
    }

puntos + puntos
puntos * puntos
puntos - puntos
puntos ^ puntos

# Generamos mas codigo para realizar mas operaciones complejas


Ops.vcoordenadas <- 
  function(e1, e2) {
    if (missing(e1)){
      x = xcoords(e1)
      y = ycoords(e1)
      v = get(.Generic)(valores(e2))
  }
    else {
      is.vc1 = inherits(e1, "vcoordenadas")
      is.vc2 = inherits(e2, "vcoordenadas")
      if (is.vc1 && is.vc2) {
        if (!condicion_operacion(e1, e1))
          stop("no cumple las condiciones de las operaciones")
        x = xcoords(e1)
        y = ycoords(e1)
        v = get(.Generic)(valores(e1), valores(e2))
        
    } 
      else if (is.vc1){ 
        if (length(e1) < length(e2))
          stop("diferente longitud")
        x = xcoords(e1)
        y = ycoords(e1)
        v = get(.Generic)(valores(e1), e2)
    }
     else if  (is.vc2){ 
       if (length(e2) < length(e1))
          stop("diferente longitud")
        x = xcoords(e2)
        y = ycoords(e2)
        v = get(.Generic)(e1, valores(e2))
        
     }
 }
    
switch(.Generic,
           "=="=, "!="=, "<"=, "<="=, ">"=, ">="= v,
           vcoordenadas(x, y, v))
    
}

puntos
5 * puntos
puntos > 30


