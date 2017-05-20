# Curso general de R

En este curso usaremos un [kernel nativo de R](https://github.com/IRkernel/IRkernel), sobre [Jupyter](http://jupyter.org/) usando [Anaconda](https://www.continuum.io/anaconda-overview).


- Requisitos: Manejo de la linea de comandos. Una buena opción es [webminal](http://www.webminal.org/).

- **Lectura y videos recomendados**
   * [Technical Foundations of Informatics Michael Freeman and Joel Ross](https://info201-s17.github.io/book/).
  	* [Introduction to the Command Line](https://launchschool.com/books/command_line).
  	* [Agile Planning](https://launchschool.com/books/agile_planning).
  	* [Programming Part 1 (Writing code in RStudio)](https://www.rstudio.com/resources/webinars/rstudio-essentials-webinar-series-part-1/).
   * [Guia de estilo de R ](https://google.github.io/styleguide/Rguide.xml)
   
 
## Esquema del Curso

* [Introducción a R](https://nbviewer.jupyter.org/github/C-Lara/Curso-R/blob/master/Intro_R/Intro_R.ipynb).
* [Cálculo básico con R](http://nbviewer.jupyter.org/github/C-Lara/Curso-R/blob/master/Calculo_basico/Calculo_R.ipynb).
  - [Inspección de variables y el espacio de trabajo de R](https://nbviewer.jupyter.org/github/C-Lara/Curso-R/blob/master/Calculo_basico/Inspeccion-variables_workspace.ipynb).
* [Vectores, matrices y arrays](https://nbviewer.jupyter.org/github/C-Lara/Curso-R/blob/master/vectores-matrices-arrays/vectores-matrices-arrays.ipynb).
   - [Aplicaciones](http://nbviewer.jupyter.org/github/C-Lara/Curso-R/blob/master/vectores-matrices-arrays/Aplicaciones.ipynb)
*  Listas, data frames, cadenas, factores y tablas.
   - [Listas-Data frames](https://nbviewer.jupyter.org/github/C-Lara/Curso-R/blob/master/Lista-dataframes-factores-tablas/listas-dataframes.ipynb).
   - [Cadenas, factores y tablas](https://nbviewer.jupyter.org/github/C-Lara/Curso-R/blob/master/Lista-dataframes-factores-tablas/Cadena-factores-tablas.ipynb).
*  Estructuras de programación en R.
   - [Flujo de control y bucles](https://nbviewer.jupyter.org/github/C-Lara/Curso-R/blob/master/Estructuras-programacion/Flujo_control-bucles.ipynb).
   - [Bucles avanzados]().
* Entornos y funciones.
   - [Introduccion a los entornos de R](https://nbviewer.jupyter.org/github/C-Lara/Curso-R/blob/master/Entornos-funciones/Entornos-funciones%281%29/Entornos-funciones%281%29.ipynb).
* Gráficos.
* Programación orientada a objetos.
* Manipulación de  datos con R.
* Base de datos relacionales y no relacionales  con R.
* Simulación.
* R y otros lenguajes.
* Programación funcional
* [Opcional] Programación en Paralelo con R.

## Acerca de temas de presentación y complementarios

 - Estrategias generales para el diseño de Algoritmos
    * Búsqueda exhaustiva.
    * Vuelta atrás.
    * Disminuir y conquistar.
    * Transformar y conquistar.
    * Greedy.
 - Técnicas de Análisis.
    * Análisis de un algoritmo no recursivo. Ejemplo: Square Build-Up. 
    * Análisis de un algoritmo recursivo. Ejemplo: Torres de Hanoi.
    * Invariantes. Ejemplos.
 - Herramientas de álgebra lineal numérica
    * Estructura matricial y complejidad algoritmica.
    * Resolución de ecuacions lineales con matrices factorizadas.
    * Factorización LU, Cholesky y LDLT.
    * Eliminación de bloques. Complemento de Schur.
    * Algoritmos.
 - Descomposición QR, transformaciones de Householder y rotaciones Givens. Algoritmos.
 - El procedimiento de Gram-Schmdidt, descomposición QR, mínimos cuadrados. Algoritmos.
 - Métodos de Gradiente conjugado. Algoritmos y complejidad.
 - Métodos de subespacios de Krilov. Algoritmo de Arnoldi y Lanczos.
 - Descomposición por valores singulares. Algoritmos.
 - Algoritmos de Grafos
   * Algoritmos del camino más corto: Dijstra, Floyd-Warshall.
   * Problema del árbol generador mínimo.
   * Algoritmo BFS y DFS. 
   * Algoritmo de Boruvka -Solling.
 - Prueba del teorema fundamental de Programación Lineal. El método del Simplex. Algoritmos.
 - Métodos de puntos interiores. Algoritmos. 
 - Cadenas de Markov y Martingalas.
    * Matrices de transición. Cadenas de Markov y grafos.
    * Cadenas de Markov irreducibles. Distribuciones invariantes.
    * Martingalas. Teorema de convergencia de Martingalas.
    * Tiempos de parada.
 - Caminos aleatorios.
   * Definiciones.
   * El principio de reflección. El teorema de Ballot.
   * Retorno al cero. 
   * Lema de Nelson. 
 - Métodos de Montecarlo.
    * Definiciones.
    * Método tradicional de integración de MonteCarlo.
    * Caso particular: Simulación de Variables aleatorias.
    * El método Bootstrap.
    * El método  Jackknife.

## Libros de Texto

- Hands on Programming with R, Garret Grolemund, O'really Media, 2014
-  **Using R for Introductory Statistics**, John Verzani, June 26, 2014 by Chapman and Hall/CRC.
-  An Introduction to Statistical Learning: with applications in R, Gareth James, Trevor Hastie, Robert Tibshirani, Daniel Witten, Springer, 2015.
-  Beginning Data Science with R, Manas A. Pathak, Springer, 2016.

## Software

### R y Rstudio

[R](https://www.cran.r-project.org/) y [RStudio](https://www.rstudio.com/) . RStudio es un IDE para R. Es software libre con licencia GPLv3 y se puede ejecutar sobre distintas plataformas  o incluso desde la web usando [RStudio Server](https://support.rstudio.com/hc/en-us/articles/200552306-Getting-Started).


```bash
c-lara@Lara:~$ wget https://download1.rstudio.org/rstudio-0.99.893-amd64.deb
c-lara@Lara:~$sudo dpkg -i *.deb
c-lara@Lara:~$rm *.deb
``` 
- [Programming Part 1 (Writing code in RStudio)](https://www.rstudio.com/resources/webinars/rstudio-essentials-webinar-series-part-1/).
- Using R and Rstudio for Data Management, Statistical and Graphics, Nicholas J. Horton and Ken Kleinman, CRC Press, 2015.

Para actualizar [R](https://www.cran.r-project.org/) se podría escribir en el terminal 

```
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu precise/" | sudo tee -a /etc/
```
### ggplot2

[ggplot2](http://ggplot2.org/) es un paquete pata gráficos de R, basado en **grammar**. Este **grammar basado **
basado en *Grammar on Graphics*, está formado  de un conjunto de componentes independientes que pueden ser usadas de muchas maneras diferentes. La forma de instalar este paquete es de la forma habitual

```r
install.package('ggplot2')
```

La sintaxis es un poco distinta, como indica el siguiente ejemplo


```r
geom_lm <- function(formula = y ~ x, colour = alpha("steelblue", 0.5), 
                    size = 2, ...)  {
  geom_smooth(formula = formula, se = FALSE, method = "lm", colour = colour,
    size = size, ...)
}
ggplot(mpg, aes(displ, 1 / hwy)) + 
  geom_point() + 
  geom_lm()
ggplot(mpg, aes(displ, 1 / hwy)) + 
  geom_point() + 
  geom_lm(y ~ poly(x, 2), size = 1, colour = "red")
```

Mayor información en la [documentación de ggplot2](http://docs.ggplot2.org/current/)


### R Markdown 

[R Markdown](http://rmarkdown.rstudio.com/index.html) es un framework para ciencia de datos de manera que puede crear reportes dinámicos con R, además de ejecutar y guardar código. Por ejemplo sea un tabla en markdown con R.

```{r , results='asis', echo=FALSE}
cat("x | y", "--- | ---", sep="\n")
cat(apply(df, 1, function(X) paste(X, collapse=" | ")), sep = "\n")
```

R Markdown soporta formatos de salida estáticos y dinámicos que incluye  hTML, pdf,  beamer-latex, html5T, shiny,etc.

Más información:

* [Lecciones de R Markdown ](http://rmarkdown.rstudio.com/lesson-1.html).

En las notas se usan los *los folletos(handout) de [Edward Tufte](http://rmarkdown.rstudio.com/tufte_handout_format.html)*. El estilo de Tufte es conocido por su amplio uso de notas al margen, la estrecha integración de gráficos con el texto, y una establecida tipografía. Se puede instalar como un paquete de R  de la siguiente forma:

```
install.packages("tufte", type = "source")


```

### R Notebooks
Un R Notebooks es un documento R Markdown, que permite mostrar independientemente e interactivamente , código R y sintaxis de  otros lenguajes. Es una manera fácil de generar reportes, análisis estadísticos, visualización de datos.

Más información en  la página [http://rmarkdown.rstudio.com/r_notebooks.html](http://rmarkdown.rstudio.com/r_notebooks.html).


### Shiny 

[Shiny](http://shiny.rstudio.com/)  es una herramienta para crear fácilmente aplicaciones web interactivas **(apps)** que permiten a los usuarios interactuar con sus datos sin tener que manipular el código, usando un paradigma conocido como [programación reactiva](https://en.wikipedia.org/wiki/Reactive_programming)  que enfatiza  valores que cambian en el tiempo
 y expresiones que registran esos cambios.  Para sacar el máximo partido de Shiny, se debe  entender el modelo de [programación reactiva](http://shiny.rstudio.com/articles/reactivity-overview.html) que se utiliza. 
 

Más información en el [tutorial de Shiny](http://shiny.rstudio.com/tutorial/)


### Knitr 

[knitr](http://yihui.name/knitr/)  fue diseñado para ser una máquina de generación dinámica de reportes o documentos que son  una mezcla de texto y código que se procesa y devuelve respuestas válidas para la ciencia de datos. 

El diseño de knitr permite no permite sólo código R, sino de otros lenguajes como Python, Java Script o Awk, además de producir resultados en formatos como LaTeX, HTML5, Markdown, AsciiDoc, etc, como se muestran en los [ejemplos de knitr](https://github.com/yihui/knitr-examples).

El paquete [**Knitr**](http://yihui.name/knitr/) se instala en R


```r
install.packages("knitr")
library("knitr")
```


Knitr es libre, además de poseer muchos [ejemplos](https://github.com/yihui/knitr-examples) y [demostraciones](http://yihui.name/knitr/demos/).



### SQL y PostgreSQL

El SQL es el lenguaje estándar ANSI/ISO de definición, manipulación y control de bases de datos relacionales.

[PostgreSQL](https://www.postgresql.org/ ) es un sistema de administración de bases de datos relacionales (RDBMS). Significa que es un sistema para administrar datos guardados en relaciones. Una relación es esencialmente un término matemático para referirse a una tabla aunque  existen otras maneras de organizar las bases de datos. 

Una buena referencia de SQL es el libro de Thomas Nield [Getting Started with SQL A Hands-On Approach for Beginners](http://shop.oreilly.com/product/0636920044994.do ). 

La instalación de PostgreSQL en Linux, se da en la siguiente [página](https://launchschool.com/blog/how-to-install-postgres-for-linux).

- **Lectura Recomendable: [Introduction to SQL](https://launchschool.com/books/sql)**.
- [Started with Postgresql and R](https://datashenanigan.wordpress.com/2015/05/18/getting-started-with-postgresql-in-r/).
- [Mastering SQL for data science ](http://www.kdnuggets.com/2016/06/seven-steps-mastering-sql-data-science.html).



### Otros Libros de R y más

1 .`ggplot2 Essentials`, Donato Teutonico, Packt open source, 2015.

2 .R for Data science, Dan Toomey, Packt open source, 2014.

3 .The Art of Programming: A Tour Of Statistical Software Design Norman Matloff, no starch press,
2011.

4 .R by Example Jim Albert, Maria Rizzo, Springer, 2012.

5 .Using R for Numerical Analysis in Science and Engineering, Victor A. Bloomfield, CRC Press, 2014.

6 .Statistical Computing in C++ and R, Randall L. Eubank and Ana Kupresanin, CRC Press, 2011.

7 .R for Programmers: Mastering the Tools,  Dan Zhang, CRC Press, 2016.

8 .[Opcional] Introducción a la Computación, J. Glenn Brookshear, Pearson, 2012.

9 .`ggplot2:` Elegant Graphics for Data Analysis, Hadley Wickham, Springer, 2009.

10 . Getting Started with SQL, A hands-on approach for beginners, Thomas Nield, 2016.

11 . Learning Spark: Lightning-Fast Big Data Analysis, Holden Karau, Andy Konwinski, Patrick Wendell, Matei Zaharia,  O'Reilly Media; 1 edition (28 January 2015)


### Notas online

1 .El pequeño Libro de Inferencia Estadística. https://leanpub.com/LittleInferenceBook/read.

2 .Fuentes para aprender R UCLA http://www.ats.ucla.edu/stat/r/.

3 .Curso de Programación en R e Inferencia Estadística, https://www.coursera.org/jhu.

4 .Documentación de R, ordenada por Temas, http://www.rdocumentation.org/.

5 .El mundo de R, en este blog: http://www.r-bloggers.com/.

6 .Advanced R: http://adv-r.had.co.nz/

7 .Step by Step Guide to Learn Data Science on R: http://www.analyticsvidhya.com/learning-paths-data-science-business-analytics-business-intelligence-big-data/learning-path-r-data-science/.

8 .Intermediate R: https://www.datacamp.com/courses/intermediate-r.

9 .R for Data Science: http://r4ds.had.co.nz/.

10 .RPubs: https://rpubs.com/, documentos de R, en Rmarkdown.

11 .Efficient R programming: https://csgillespie.github.io/efficientR.

12 . Algunos canales de YouTube para aprender Estadistica:
  * [Brandon Foltz](https://www.youtube.com/user/BCFoltz). 
  * [jbstatistics](https://www.youtube.com/user/jbstatistics).
  * [Analytics University](https://www.youtube.com/channel/UC2XO4HDxzfMOZIV1l795g1Q).
  * [NPTEL HRD](https://www.youtube.com/user/nptelhrd).
  * [Texas University Videos : Statistical Inference](https://stat.utexas.edu/videos/r/statistical-inference/)


## Lista de artículos importantes

- [What Types of Questions Can Data Science Answer](http://www.kdnuggets.com/2015/09/questions-data-science-can-answer.html).
- [Introducción a ggplot()](http://www.noamross.net/blog/2012/10/5/ggplot-introduction.html).
- [Data Maning vs Statistics ](http://www.kdnuggets.com/2016/09/data-science-basics-data-mining-statistics.html).
- [Data Science for Internet of things](http://www.kdnuggets.com/2016/09/data-science-iot-10-differences.html).
- [¿Qué es Hadoop?](https://www.analyticsvidhya.com/blog/2014/05/hadoop-simplified/).
- [Procesamiento de imágenes, machine learning en R](http://blog.kaggle.com/2015/12/04/image-processing-machine-learning-in-r-denoising-dirty-documents-tutorial-series/).
- [h2o para modelos con grandes conjuntos datos](http://www.analyticsvidhya.com/blog/2016/05/h2o-data-table-build-models-large-data-sets/).
- [Una comparación interesante: Estadística y Machine Learning](http://brenocon.com/blog/2008/12/statistics-vs-machine-learning-fight/).
- [Cómo configurar R en Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-r-on-ubuntu-14-04).
- [Paquete pryr()](http://www.noamross.net/blog/2013/1/17/steve-culman-on-plyr.html).
- [Missing Values, Data Science and R](https://www.rstudio.com/rviews/2016/11/30/missing-values-data-science-and-r/)
- [Guia de estilo de R de Google](http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml).
- [Herramientas de depuración en R](http://www.noamross.net/blog/2013/4/18/r-debug-tools.html).
- [Notas de Sql, Python, S, etc](https://www.stat.berkeley.edu/~spector/).
- [Magnifico editor de Expresiones Regulares](http://www.regexpal.com).
- [Sql VS Nosql, lo que necesitas saber](http://dataconomy.com/sql-vs-nosql-need-know/).
- [Vectorización en R](http://www.noamross.net/blog/2014/4/16/vectorization-in-r--why.html).
- [dplyr](http://www.michaellevy.name/blog/dplyr-data-manipulation-in-r-made-easy).
- [El paquete Knitr](http://kbroman.org/knitr_knutshell/).
- [Velocidad en R](http://www.noamross.net/blog/2013/4/25/faster-talk.html).
- [Manual de Expresiones regulares](http://regexone.com/).
- [10 videos sobre BigData](http://dataconomy.com/10-best-big-data-videos-on-youtube/).
- [Usando Stackoverflow y R](http://stackoverflow.com/questions/tagged/r).
- [Depuración con RStudio](https://support.rstudio.com/hc/en-us/articles/205612627-Debugging-with-RStudio).Un video sobre la  [Depuración en R con Rstudio](https://vimeo.com/99375765). 
- [No necesitas enterder punteros para programar en R](http://www.win-vector.com/blog/2014/04/you-dont-need-to-understand-pointers-to-program-using-r/)
- [R-fiddle: un entorno para escribir, correr código R, en el navegador](http://www.r-fiddle.org/#/).
- [Manual interactivo de SQL](http://sqlbolt.com/).
- [Usando dplyr en la manipulación de datos](https://www.datacamp.com/courses/dplyr-data-manipulation-r-tutorial)
- [Puede reemplazar Python a R, en el desarrollo de modelos predictivos](http://www.experfy.com/blog/can-python-replace-r-developing-predictive-models/).
- [Expresiones regulares con Perl](http://perldoc.perl.org/perlre.html#Regular-Expressions)
- [Por que deberias aprender R, para ciencia de datos](http://dataconomy.com/why-you-should-learn-r-first-for-data-science/).
- [Haciendo ciencia de datos en 5 minutos](http://datasciencetoolbox.org/).
- [Libro que enseña 7 bases de datos open source](https://pragprog.com/book/rwdata/seven-databases-in-seven-weeks).
- [Machine Learning en R](http://blog.datacamp.com/machine-learning-in-r/).
- [Data Mining, Analytics, BigData y Ciencia de Datos](http://www.kdnuggets.com/).
- [Manual de MapReduce](https://hadoop.apache.org/docs/r1.2.1/mapred_tutorial.html).
- [Notas de SQL, desde Postgresql](http://www.postgresql.org/docs/8.4/static/tutorial-select.html).
- [R y C++](http://www.lindonslog.com/programming/r/rcpp/).
- [Introducción al Lenguaje Perl](https://www.biostat.wisc.edu/~kbroman/perlintro/).
- [Terminos para bases de datos ](http://www.kdnuggets.com/2016/07/database-key-terms-explained.html).
- [Introducción a Paralelo MCMC para inferencia, usando C,MPI, GSL y SPRNG](https://darrenjw.wordpress.com/2010/12/14/getting-started-with-parallel-mcmc/).
- [Unas notas de MongoDb](http://www.genbetadev.com/bases-de-datos/mongodb-que-es-como-funciona-y-cuando-podemos-usarlo-o-no).
- [Expresiones regulares: Como son utilizadas en R](https://stat.ethz.ch/R-manual/R-devel/library/base/html/regex.html).
- [Un tutorial acerca de make](http://kbroman.org/minimal_make/).
- [El paquete htmlwidgets](https://www.rstudio.com/resources/webinars/creating-javascript-data-visualizations-in-r/)
- [Escribiendo paquetes de R, desde 0](http://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/).
- [Data wrangling with R and RStudio](https://www.rstudio.com/resources/webinars/data-wrangling-with-r-and-rstudio/).
- [R y MongoDb](https://gist.github.com/Btibert3/7751989).
- [R, BigData, NoSql](http://cdn.oreillystatic.com/en/assets/1/event/102/Big%20Data%20Analyses%20with%20R%20Presentation.pdf).
- [Una guia completa  para la exploración de datos ](http://www.analyticsvidhya.com/blog/2016/01/guide-data-exploration/).
- [Libro acerca de Series de Tiempo](http://a-little-book-of-r-for-time-series.readthedocs.org/en/latest/).
- [Series de tiempo en R](https://cran.r-project.org/web/views/TimeSeries.html).
- [RMarkdown con RStudio](http://rmarkdown.rstudio.com/).
- [Tutorial completo acerca de ciencia de datos en R ](http://www.analyticsvidhya.com/blog/2016/02/complete-tutorial-learn-data-science-scratch/).
- [¿Por qué R es dificil de aprender?](http://r4stats.com/articles/why-r-is-hard-to-learn/).
- [data table and data frame for large data etc](http://www.analyticsvidhya.com/blog/2016/05/data-table-data-frame-work-large-data-sets/).
- [Speed Up Your Code: Parallel Processing with multidplyr](http://www.mattdancho.com/code-tools/2016/12/18/multidplyr.html).
- [Data Science Basics: Power Laws and Distributions](http://www.kdnuggets.com/2016/12/data-science-basics-power-laws-distributions.html).
