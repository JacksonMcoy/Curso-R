Curso de R
========================================================
author: Inspección de variables y el espacio de trabajo

Clases
========================================================
<small>Todas las variables en R tienen una clase, que te dice qué tipos de variables son. Por ejemplo, la mayoría de los números tienen clase **numeric** y los valores lógicos tienen la clase **logic**. El tipo de datos más pequeño en R es un **vector**.</small>

<small>Podemos averiguar la clase de una variable utilizando **class(variable)**:</small>


```r
class(c(TRUE, FALSE))
```

```
[1] "logical"
```

<small> Las variables también tienen un tipo de almacenamiento interno (accedido a través de **typeof**), un modo (**mode**) y un modo de almacenamiento (**storage.mode**). </small>

Tipos de almacenamiento interno
========================================================
<small>  Los tipos, modos y modos de almacenamiento existen en su mayoría para propósitos heredados, por lo que en la práctica sólo necesitarás usar **class** de un objeto. </small>


```r
set.seed(2)
x <- 1:10
typeof(x)
```

```
[1] "integer"
```
***

```r
y <- x/5 + rnorm(10)
typeof(y)
```

```
[1] "double"
```

```r
g <- lm(y ~ x)
typeof(g)
```

```
[1] "list"
```

Diferentes tipos de números
========================================================

<small> R contiene tres clases diferentes de variable numérica: **numeric** para valores en coma flotante, **integer** para los enteros y **complex** para los números complejos. Podemos decir cuál es cuál examinando la clase de la variable:</small>


```r
class(sqrt(1:10))
```

```
[1] "numeric"
```
***


```r
class(4L) 
```

```
[1] "integer"
```

```r
class(1 + 2i)
```

```
[1] "complex"
```

```r
class(0.5:4.5)
```

```
[1] "numeric"
```

Otras clases
========================================================

<small> Además de las tres clases numéricas y la clase lógica que hemos visto, hay tres clases más de vectores: **caracter** para almacenar el texto, **factors** para almacenar datos categóricos y **raw** para almacenar datos binarios.</small>


```r
class(c("ella", "es", "bella", "ella", "es", "una", "estrella"))
```

```
[1] "character"
```

<small> R tiene una solución más sofisticada para datos categóricos utilizando  **factores** que son números enteros con etiquetas:</small>


```r
genero <- factor(c("masculino", "femenino", "femenino", "masculino", "femenino"))
```

Otras clases(1)
=======================================================

<small> El contenido del factor se parece mucho a su equivalente de caracteres: obtiene etiquetas legibles para cada valor que se limitan a valores específicos conocidos como los **niveles del factor**:</small>


```r
nlevels(genero)
```

```
[1] 2
```

<small>Por defecto, los niveles de factor se asignan alfabéticamente. Los valores deL factor se almacenan como números enteros en lugar de caracteres. Podemos ver esto más claramente usando **as.integer**:</small>



```r
as.integer(genero)
```

```
[1] 2 1 1 2 1
```

Otras clases(2)
=======================================================
left: 60%
<small> La clase **raw**  almacena vectores de bytes raw. Cada byte está representado por un valor hexadecimal de dos dígitos. Estos se utilizan principalmente para almacenar el contenido de archivos binarios importados. Los números enteros 0 a 255 se pueden convertir en raw utilizando **as.raw**. Para las cadenas, **as.raw** no funciona, en este caso se debe usar **charToRaw** en su lugar:</small>


```r
as.raw(1:5)
```

```
[1] 01 02 03 04 05
```
***


```r
letra <- charToRaw("R!")
letra
```

```
[1] 52 21
```

```r
class(letra)
```

```
[1] "raw"
```

Clase matrix
=======================================================

Además de las clases de vectores mencionadas, existen muchos otros tipos de variables, por ejemplo las matrices contienen datos multidimensionales, y las matrices con la clase **matrix** son un caso especial de matrices bidimensionales.


```r
x <- matrix( c(6,7), nrow=2 )
class(x)
```

```
[1] "matrix"
```
Comprobación y cambio de clases
=======================================================

<small> Llamar a la función **class** es útil para examinar interactivamente las variables en el prompt de comandos, pero si queremos conocer el tipo de un objeto , es mejor usar la función **is** o una de sus variantes específicas de clase. 

En una situación típica, nuestra prueba se verá como:</small>

```
if(!is(x, "alguna_clase"))
{
   ...
}
```

<small> La mayoría de las clases comunes tienen sus propias funciones `is.*`  y llamarlas normalmente es un poco más eficiente que usar la función general **is**.  </small>

Comprobación y cambio de clases(1)
=======================================================

Por ejemplo: 
 

```r
is.character("rojo verde, amarillo fresa")
```

```
[1] TRUE
```

```r
is.numeric(3L)
```

```
[1] TRUE
```

***

```r
is.logical(FALSE)
```

```
[1] TRUE
```

```r
is.list(list(a = 1, b = 2))
```

```
[1] TRUE
```

```r
is.integer(3)
```

```
[1] FALSE
```
Comprobación y cambio de clases(2)
=======================================================

<small>La función  **is.numeric** devuelve **TRUE** para enteros así como valores de punto flotante. Si queremos probar sólo números de coma flotante, entonces debemos usar **is.double**. Sin embargo, esto no suele ser necesario, ya que R está diseñado para que los valores de punto flotante y enteros se puedan usar de forma más o menos intercambiable. Si se agrega  el sufijo L el número se convierte en un entero.


```r
is.integer(2L)
```

```
[1] TRUE
```

Podemos ver una lista completa de todas las funciones **is** del paquete base con el siguiente código:</small>


```r
ls(pattern = "^is", baseenv())
```
Casting
=======================================================
left: 69%
<small> A veces deseamos cambiar el tipo de un objeto. Esto se llama **casting** y la mayoría de funciones `is*` tienen una función correspondiente `as*` para lograrlo. </small>

<small>Las funciones especializadas como `as*` deben ser usadas sobre **as** cuando estén disponibles, ya que son generalmente más eficientes y a menudo contienen una lógica adicional específica para cada clase. </small>


```r
x <- "123.456"
as(x, "numeric")
```

```
[1] 123.456
```
***

```r
as.numeric(x)
```

```
[1] 123.456
```

Examinando Variables
=======================================================
<small> Siempre que hayamos hecho un cálculo o el nombre de una variable en la consola de R, el resultado se imprime. Esto sucede porque R llama implícitamente al método **print** del objeto. </small>

<small> Dentro de bucles o funciones, la impresión automática no ocurre, por lo que tenemos que llamar explícitamente a print: </small>


```r
vector1 <- c(1, 8, 27, 64)
for(i in vector1) i # no se imprime
for(i in vector1) print(i)
```

```
[1] 1
[1] 8
[1] 27
[1] 64
```

Examinando Variables(1)
=======================================================
<small> Es útil  algún tipo de resumen del objeto. La función **summary** hace exactamente eso, dando la información apropiada para diferentes tipos de datos. Las variables numéricas se resumen con la media, mediana y algunos cuantiles. </small>


```r
num <- runif(30)
summary(num)
```

```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.01041 0.19470 0.49537 0.51163 0.81035 0.98173 
```

Examinando Variables(2)
=======================================================
<small> Los vectores categóricos y lógicos se resumen por los conteos de cada valor. En este ejemplo, **letters** es una constante incorporada que contiene los valores en minúsculas de a a la z (**LETTERS** contiene los equivalentes en mayúsculas, A a Z). </small>


```r
fac <- factor(sample(letters[1:6], 30, replace = TRUE))
summary(fac)
```

```
a b c d e f 
4 8 4 3 6 5 
```

Examinando Variables(3)
=======================================================

<small> En este caso, se presenta el conteo de valores en un muestreo aleatorio con `replace` de la función **sample**: </small>


```r
bool <- sample(c(TRUE, FALSE, NA), 30, replace = TRUE)
summary(bool)
```

```
   Mode   FALSE    TRUE    NA's 
logical      12      10       8 
```

Examinando Variables(4)
=======================================================

<small>Los objetos multidimensionales, como matrices y data frames, se resumen en columnas. En un data frame de 30 filas y objetos más grandes es necesario reducir la información, usando la función **head** que se puede utilizar para mostrar sólo las primeras filas (seis por defecto): </small>


```r
dfr <- data.frame(num, fac, bool)
summary(dfr)
```

```
      num          fac      bool        
 Min.   :0.01041   a:4   Mode :logical  
 1st Qu.:0.19470   b:8   FALSE:12       
 Median :0.49537   c:4   TRUE :10       
 Mean   :0.51163   d:3   NA's :8        
 3rd Qu.:0.81035   e:6                  
 Max.   :0.98173   f:5                  
```

Estructura de un objeto
=======================================================

<small> La función **str** muestra la estructura del objeto. No es tan interesante para los vectores, pero str es muy útil para los data frames y listas anidadas:</small>


```r
str(dfr)
```

```
'data.frame':	30 obs. of  3 variables:
 $ num : num  0.662 0.388 0.837 0.151 0.347 ...
 $ fac : Factor w/ 6 levels "a","b","c","d",..: 1 1 5 6 2 5 5 6 4 5 ...
 $ bool: logi  FALSE NA TRUE FALSE TRUE NA ...
```

Más sobre clases
=======================================================
<small>La función **unclass** se puede utilizar para evitar que en la muestra de un objeto, se pierda información útil,  permitiendo ver cómo se construye una variable.  </small>


```r
unclass(fac)
```

```
 [1] 1 1 5 6 2 5 5 6 4 5 5 6 4 2 6 3 3 3 2 1 2 2 1 2 2 5 2 6 3 4
attr(,"levels")
[1] "a" "b" "c" "d" "e" "f"
```

<small> Es útil saber que la función **attributes** proporciona una lista de todos los atributos que pertenecen a un objeto:</small>

```r
attributes(fac)
```
El espacio de trabajo en R
=======================================================
<small> Es bueno saber los nombres de las variables que hemos creado y lo que contienen. Para enumerar los nombres de las variables existentes, se utiliza la función **ls**. Este nombre lleva el nombre del comando Unix equivalente y sigue la misma convención: por defecto, los nombres de las variables que comienzan con un . están escondidos. Para verlos, pase el argumento **all.names = TRUE**:</small>


```r
r <- 1
b <- "Jessica"
c <- TRUE
ls()
```

```
 [1] "b"       "bool"    "c"       "dfr"     "fac"     "g"       "genero" 
 [8] "i"       "letra"   "num"     "r"       "vector1" "x"       "y"      
```
El espacio de trabajo en R(1)
=======================================================
<small>Podemos ver la estructura de nuestras variables usando **ls.str**, que es muy útil durante las sesiones de depuración. **browseEnv** muestra  una página HTML en nuestro navegador web con toda esa información: </small>

```r
browseEnv()
```
<small> Podemos limpiar nuestro espacio de trabajo, usando la función **rm** para eliminar variables: </small>


```r
rm(r, c)
ls()
```

```
 [1] "b"       "bool"    "dfr"     "fac"     "g"       "genero"  "i"      
 [8] "letra"   "num"     "vector1" "x"       "y"      
```
