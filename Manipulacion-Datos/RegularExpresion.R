# Las expresiones regulares son patrones que especifica 
# un conjunto de cadenas de caracteres; esto es 
# coincide ciertas cadenas.

library(stringr)
library(graphics)

# Cuantificadores

# *:coincide al menos 0 veces.
# +:coincide al menos 1 veces.
# ?: coincide a lo mas 1 vez.
# {n}: coincide exactamente n veces.
# {n, }: coincide a lo mas n veces.
# {n,m}: coincide entre n y m veces


sr1 <- c("m", "mi", "mli", "mlli", "mllli", "mlllli")
sr1
grep("ml*i", sr1, value = TRUE)
grep("ml+i", sr1, value = TRUE)
grep("ml?i", sr1, value = TRUE)
grep("ml{2}i", sr1, value = TRUE)
grep("ml{2,}i", sr1, value = TRUE)
grep("ml{2,3}i", sr1, value = TRUE)

# Posicion de patrones dentro de una cadena

# ^ : coincide con el inicio de la cadena
# $ : coincide con el final de la cadena
# \b: coincide con la cadena vacia en cualquiera de los bordes de una palabra.

sr2 <- c("abcd", "cdab","cabd", "c abd")
sr2
grep("ab", sr2, value=TRUE)
grep("^ab", sr2, value = TRUE)
grep("ab$", sr2, value = TRUE)
grep("\\bab", sr2, value = TRUE)


# Operadores

sr3 <- c("^cd", "cd", "cde", "cdf", "cdg", "cd 12")
sr3
grep("cd.", sr3, value = TRUE)
grep("cd[e-g]", sr3, value = TRUE)
grep("cd[^f]", sr3, value =TRUE)
grep("^cd", sr3, value = TRUE)
grep("\\^cd", sr3, value = TRUE)
grep("cde|cdf", sr3, value = TRUE)

# Mas operaciones con funciones del paquete  stringr 

str_c("R y Python ", "y C" ,"son ", "lenguajes de programacion", sep = ", ")  #concatenacion
str_sub("R es un entorno estadistico", 1, 16)
str_length("Adios")


str1 <- c(
  "linux", 
  "219 733 8965", 
  "329-293-8753", 
  "Trabajo: 579-499-7527; Casa: 543.355.3679"
)
 patr<- "([2-9][0-9]{2})[- .]([0-9]{3})[- .]([0-9]{4})"
 
 str_detect(str1, patr) # detecta la ausencia o presencia de un patron en una cadena
 str_subset(str1, patr) # Retorna elementos de vector caracter que coincide con el
                        # con la expresion regular
 
 loc<- str_locate(str1, patr) # Localiza la primera posicion de un patron y retorna
                              # una matriz numerica
 loc
 str_locate_all(str1, patr)


str_extract(str1, patr) # Extrae texto correspondiente a la primera coincidencia.
str_extract_all(str1, patr) # Extrae todas las correspondencias y retorna una 
                            # lista de vectores de caracter


str_extract_all(str1, patr, simplify = TRUE)


str_match(str1, patr) # Captura 'grupos' formados por () desde la primera coincidencia.
                      # Retorna una cadena de matrices.
str_match_all(str1, patr)


str_replace(str1, patr, "***-***-****") # Reemplaza la primera coincidencia y retorna
                                        # un vector de caracteres
str_replace_all(str1, patr, "***-***-****")


str2 <- "R es un lenguaje de programacion que usa numeros y letras como x456y2390"
strsplit(str2, "[xy]", perl = TRUE) # Divide cadenas en puntos definidos
grepl("[a-z][0-9]{3}[a-z][0-9]{4}", str2, perl = TRUE)

sub("numeros(.*)([a-z][0-9]{3}).([0-9]{4})", "cadenas\\1\\2H\\3", str2, perl =TRUE)
gsub("numero", "cadenas", str2, perl =TRUE)

patr1 <- "([[:digit:]]{2}) ([[:alpha:]]+) ([[:digit:]]{4})"
str3 <- "blabla 23 mai 2000 blabla 18 mai 2004"
regexpr(pattern = patr1, text = str3)
gregexpr(pattern = patr1, text = str3)


# Un ejemplo (vignettes de stringr)

col2hex <- function(col) {
  rgb <- col2rgb(col)
  rgb(rgb["red", ], rgb["green", ], rgb["blue", ], max = 255)
}

# Reemplazamos los nombre de los colores en una cadena con sus equivalentes
# hexadecimales
str4 <- c(" Roses are red, violets are blue", "My favourite colour is green")

color1 <- str_c("\\b", colors(), "\\b", collapse="|")
str_extract_all(str4, color1)


