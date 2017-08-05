<style>
.reveal h1, .reveal h2, .reveal h3 {
  word-wrap: normal;
  color: #FF4000;
  -moz-hyphens: none;
  .small-code pre code {
  font-size: 1em;
}
</style>


Curso de R
========================================================
author: Aspectos básicos de R

Operaciones matématicas y vectores
========================================================

* <small> El operador **+** realiza la adición y  se puede usar para añadir dos vectores. Un vector es un conjunto ordenado de valores </small>

* <small> El operador dos puntos **:** crea una secuencia desde un número al próximo y la función **c** concatena valores, en este caso crea vectores.</small>

* <small>Los nombres de variables son sensibles a mayúsculas y minúsculas en R, por lo que necesitamos tener un poco de cuidado. La función **C** hace algo completamente diferente a **c**.</small>

```r
1:5 + 6:10
c(1, 3, 6, 10, 15) + c(0, 1, 3, 6, 10)
```

Vectorización
========================================================

<small>Si estamos escribiendo en un lenguaje como C o Fortran, tendríamos que escribir un bucle para realizar la adición de los elementos a los vectores. La naturaleza vectorizada de la adición en R hace las cosas fáciles, evitando los bucle .</small>

<small> La [vectorización](http://www.noamross.net/blog/2014/4/16/vectorization-in-r--why.html) tiene varios significados en R, el más común de los cuales es que un operador o una función actuará sobre cada elemento de un vector sin la necesidad de que podamos escribir un bucle. </small>


```r
sum(1:5)
```

```
[1] 15
```

Vectorización(1)
========================================================

<small>Un segundo significado de la vectorización es cuando una función toma un vector como entrada y calcula un resumen estadístico. </small>


```r
sd(1:5)
```

```
[1] 1.581139
```

<small> Un tercer caso mucho menos común sobre la vectorización es la vectorización sobre argumentos. Esto es cuando una función calcula un resumen estadístico de varios de sus argumentos de entrada. La función  **median**  devuelve un resultado diferente o error por ejemplo:</small>


```r
median(1, 2, 3, 4, 5)
```

```
[1] 1
```

Vectorización(2)
========================================================

<small>Todos los operadores aritméticos en R, no sólo más (+) son vectorizados. </small>

```r
c(2, 3, 5, 7, 11, 13) - 2 
```

```
[1]  0  1  3  5  9 11
```

```r
1:2 ** 3
```

```
[1] 1 2 3 4 5 6 7 8
```
***

```r
1:10 %/% 3 
```

```
 [1] 0 0 1 1 1 2 2 2 3 3
```

```r
1:10 %% 3
```

```
 [1] 1 2 0 1 2 0 1 2 0 1
```

Funciones matématicas
========================================================
left: 60%
<small> R también contiene una amplia selección de funciones matemáticas, **sin**, **cos**, **tan** y sus inversas, logaritmos y exponentes, **log1p** y **expm1**  que calculan **log(1 + x)** y exp (x - 1)** con más precisión para valores muy pequeños, por ejemplo:</small>


```r
cos(c(0, pi/5, pi/3, pi))
```

```
[1]  1.000000  0.809017  0.500000 -1.000000
```
***

```r
exp(pi * 1i) + 1 
```

```
[1] 0+1.224647e-16i
```

```r
factorial(7)  
```

```
[1] 5040
```
Operadores relacionales
========================================================
left: 60%
<small> Para comparar valores enteros por igualdad, se utiliza **==**. Los otros operadores relacionales son vectorizados. Para comprobar la desigualdad, el operador no es igual  **!=**. Los operadores mayor y menor que son como se puede esperar: **>** y **<** (o **> =**  y **<=** si se permite la igualdad).</small>


```r
c(3, 4 - 1, 1 + 1 + 1) == 3 
```

```
[1] TRUE TRUE TRUE
```
*** 

```r
1:3 != 3:1
```

```
[1]  TRUE FALSE  TRUE
```

```r
(1:5) ^ 2 >= 16
```

```
[1] FALSE FALSE FALSE  TRUE  TRUE
```

Comparación de no enteros
========================================================

<small> La comparación de no enteros usando == es problemática. Todos los números que hemos tratado hasta ahora son números de coma flotante. Esto significa que se almacenan en la forma **a*2^ b**, para dos números a y b. Puesto que esta forma entera tiene que ser almacenada en 32 bits, el número resultante es solamente una aproximación, lo que las respuestas que se esperaba pueden estar equivocadas.</small>


```r
sqrt(2) ^ 2 == 2 
```

```
[1] FALSE
```

```r
sqrt(2) ^ 2 - 2
```

```
[1] 4.440892e-16
```

Comparación de no enteros(1)
========================================================

<small>R proporciona la función **all.equal** para comprobar la igualdad de números. Esto proporciona un nivel de tolerancia (por defecto, aproximadamente de 1.5e-8), de modo que se ignoran los errores de redondeo inferiores a esa tolerancia: </small>


```r
all.equal(sqrt(2) ^ 2, 2)
```

```
[1] TRUE
```

<small>Si los valores a comparar no son los mismos, all.equal devuelve un informe sobre las diferencias.</small>


Asignación de variables
========================================================
<small> La mayoría de veces queremos almacenar los resultados para su reutilización. Podemos asignar una variable (local) usando **<-** or **=**, aunque por razones históricas, se prefiere **<-** :</small> 

```r
x <- 1:5
y = 6:10

# Podemos reutilizar esos valores
x + 2 * y - 3
```

También podemos hacer una asignación global usando **<<-**. Por ahora tenemos una variable disponible en cualquier lugar:

```r
y <<- exp(exp(1))
```

Números especiales
========================================================
<small>R admite cuatro valores numéricos especiales: **Inf**, **-Inf**, **NaN** y **NA**.

**NaN** es la abreviatura de **not a number** y significa que nuestro cálculo no tiene sentido matemático o no se puede realizar correctamente. **NA** es la abreviatura de **not available** y representa un valor perdido, un problema común en análisis de datos.

En general, si nuestro cálculo implica un valor **NA**, en los resultados aparecerá un **NA**: </small>


```r
c(NA + 1, NA * 5, NA + Inf)
```

```
[1] NA NA NA
```

Números especiales(1)
========================================================

<small> Cuando la aritmética implica **NA** y **NaN** la respuesta es uno de esos dos valores, pero cuál de esos dos es, depende del sistema:</small>


```r
c(NA + NA, NaN + NaN, NaN + NA, NA + NaN)
```

```
[1]  NA NaN NaN  NA
```

```r
c(sqrt(Inf), sin(Inf))
```

```
[1] Inf NaN
```
<small> Hay funciones disponibles para comprobar estos valores especiales. Se debe observar que **NaN** y **NA** no son ni finitos ni infinitos, y **NA** por ejemplo es un número:</small>

Números especiales(2)
========================================================

<small> Las funciones **is.infinite**, **is.nan** y **is.na** verifican si una elemento es de los tipos mencionados:</small>


```r
x <- c(0, Inf, -Inf, NaN, NA)
is.finite(x)
```

```
[1]  TRUE FALSE FALSE FALSE FALSE
```

```r
is.infinite(x)
```

```
[1] FALSE  TRUE  TRUE FALSE FALSE
```
*** 

```r
is.nan(x)
```

```
[1] FALSE FALSE FALSE  TRUE FALSE
```

```r
is.na(x)
```

```
[1] FALSE FALSE FALSE  TRUE  TRUE
```
Operadores lógicos
========================================================

<small>  Muchos lenguajes de programación utilizan lógica booleana, donde los valores pueden ser **TRUE** o **FALSE**. En R, la situación es un poco más complicada, ya que también podemos tener valores faltantes **NA**.
Hay tres operadores lógicos vectorizados en R: </small>

* **!** es usado para **not**.
* **&** es usado para **and**.
* **|** es usado para **or**

<small>Dos funciones útiles para tratar con vectores lógicos son **any** y **all** los cuales devuelven **TRUE** si el vector de entrada contiene al menos un valor **TRUE** o todos los valores son **TRUE**, respectivamente: </small>

Operadores lógicos(1)
========================================================
Podemos escribir algunas tablas de verdad, con el siguiente código:

```r
x <- c(TRUE, FALSE, NA) 
xy <- expand.grid(x = x, y = x) # todas las combinaciones de x e y
within(
  xy,
  {
    and <- x & y
    or <- x | y
    not.y <- !y
    not.x <- !x
      }
  )
```
