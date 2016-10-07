# Curso general de R

- Requisitos: Manejo de la linea de comandos. 

  **Lectura y videos recomendados**
  	* [Introduction to the Command Line](https://launchschool.com/books/command_line).
  	* [Agile Planning](https://launchschool.com/books/agile_planning).
  	* [Programming Part 1 (Writing code in RStudio)](https://www.rstudio.com/resources/webinars/rstudio-essentials-webinar-series-part-1/).
 
##Esquema del Curso

1. Vectores, Matrices y Arrays.
2. Listas, Data Frames, Factores y Tablas.
3. Estructuras de Programación en R.
4. Programación Orientada a Objetos.
5. Gráficos.
6. Manipulación de  datos con R.
7. Base de datos relacionales y no relacionales  con R.
8. Simulación.
9. R y otros Lenguajes.
10. [Opcional] Programación en Paralelo con R.


## Libros de Texto

- Hands on Programming with R, Garret Grolemund, O'really Media, 2014
-  **Using R for Introductory Statistics**, John Verzani, June 26, 2014 by Chapman and Hall/CRC.
-  An Introduction to Statistical Learning: with applications in R, Gareth James, Trevor Hastie, Robert Tibshirani, Daniel Witten, Springer, 2015.
-  Beginning Data Science with R, Manas A. Pathak, Springer, 2016.

##Software

### R y Rstudio

[R](https://www.cran.r-project.org/) y [RStudio](https://www.rstudio.com/) . RStudio es un IDE para R. Es software libre con licencia GPLv3 y se puede ejecutar sobre distintas plataformas  o incluso desde la web usando [RStudio Server](https://support.rstudio.com/hc/en-us/articles/200552306-Getting-Started).


```bash
c-lara@Lara:~$ wget https://download1.rstudio.org/rstudio-0.99.893-amd64.deb
c-lara@Lara:~$sudo dpkg -i *.deb
c-lara@Lara:~$rm *.deb
``` 
- [Programming Part 1 (Writing code in RStudio)](https://www.rstudio.com/resources/webinars/rstudio-essentials-webinar-series-part-1/).
- Using R and Rstudio for Data Management, Statistical and Graphics, Nicholas J. Horton and Ken Kleinman, CRC Press, 2015.

### Radiant

[radiant](http://vnijs.github.io/radiant/) es una interfaz de **Analytics** en R, usando el paquete **shiny**.


Más información en [Introducing radiant](https://youtu.be/7L3hDpLw53I), un video de Vincent R. Nijs.

### SQL y PostgreSQL

El SQL es el lenguaje estándar ANSI/ISO de definición, manipulación y control de bases de datos relacionales.

[PostgreSQL](https://www.postgresql.org/ ) es un sistema de administración de bases de datos relacionales (RDBMS). Significa que es un sistema para administrar datos guardados en relaciones. Una relación es esencialmente un término matemático para referirse a una tabla aunque  existen otras maneras de organizar las bases de datos. 

Una buena referencia de SQL es el libro de Thomas Nield [Getting Started with SQL A Hands-On Approach for Beginners](http://shop.oreilly.com/product/0636920044994.do ). 

La instalación de PostgreSQL en Linux, se da en la siguiente [página](https://launchschool.com/blog/how-to-install-postgres-for-linux).

- **Lectura Recomendable: [Introduction to SQL](https://launchschool.com/books/sql)**.
- [Started with Postgresql and R](https://datashenanigan.wordpress.com/2015/05/18/getting-started-with-postgresql-in-r/).
- [Mastering SQL for data science ](http://www.kdnuggets.com/2016/06/seven-steps-mastering-sql-data-science.html).


### MongoDB [Opcional]

[MongoDB](https://www.mongodb.org/) es una sistema de base de datos NoSQL de código abierto utilizado  en aplicaciones web modernas, escrito en C++ le confiere cierta cercanía a los recursos del hardware, de modo que es bastante rápido a la hora de ejecutar sus tareas. MongoDB es una base de datos orientada a documentos, es decir guarda los datos en documentos que son almacenados en un representación binaria de JSON, llamado BSON.

Genbeta:dev tiene una lista de [artículos](http://www.genbetadev.com/bases-de-datos/una-introduccion-a-mongodb) para empezar en el mundo de las bases de datos NoSQL y MongoDB. Es interesantes ver los videos colgados en Youtube sobre MongoDB.

- [¿Qué es MongoDB?](https://www.youtube.com/watch?v=CvIr-2lMLsk).
- [Comparación de SQL y MongoBD](https://www.youtube.com/watch?v=kDSjVTpu8kI).
- [Contruyendo tu primera aplicación con MongoDB](https://www.youtube.com/watch?v=ClAQEARNUoQ).

Para poder instalar en Ubuntu, es preferible revisar la [documentación](http://docs.mongodb.org/master/tutorial/install-mongodb-on-ubuntu/) desde la página de MongoDB.


### Spark
[Spark](http://spark.apache.org/) es un framework de análisis distribuido en memoría y nos permite ir más allá de las operaciones en batch de Hadoop MapReduce: procesamiento de streaming, machine learning (MLlib), cálculo de grafos (GraphX), integración con lenguje R (Spark R) y análisis interactivos. 

Al igual que su predecesor, MapReduce  que  logra prácticamente una relación lineal de escalabilidad, Spark mantiene la escalabilidad lineal y la tolerancia a fallos de MapReduce, pero amplía sus bondades gracias a varias funcionalidades:

* DAG (Directed Acyclic Graph).
* RDD (Resilient Distributed Dataset).

Algunas lecturas y referencias


- [Apache Spark Videos](https://www.youtube.com/user/TheApacheSpark/videos).
- [¿What is Apache Spark?](https://www.mapr.com/ebooks/spark/).
- [Spark Examples ](https://spark.apache.org/examples.html).

### Anaconda

[Anaconda](https://www.continuum.io/downloads) es una distribución completa  libre de [Python](https://www.python.org/) incluye [paquetes de Python ](http://docs.continuum.io/anaconda/pkg-docs).

Anaconda incluye los instaladores de Python 2.7 y 3.5.  La instalación en **Linux**, se encuentra en la página de Anaconda y es más o menos así

1 . Descargar el instalador de Anaconda para Linux.

2 . Después de descargar el instalar, en el terminal, ejecuta para 3.5

```bash
c-lara@Lara:~$ bash Anaconda3-2.4.1-Linux-x86_64.sh

```

Es recomendable leer, alguna de las característica de Anaconda en el siguiente material [conda 30-minutes test drive](http://conda.pydata.org/docs/test-drive.html).


El proyecto [Anaconda](https://www.continuum.io/downloads) ha creado [R Essentials](http://anaconda.org/r/r-essentials), que incluye el IRKernel y alrededor de 80 paquetes para análisis de datos, incluyendo `dplyr`, `shiny`, `ggplot2`,`caret`, etc. Para instalar **R Essentials** en un entorno de trabajo, hacemos

```bash
c-lara@Lara:~$ conda install -c r r-essentials
``` 
### Proyecto Jupyter y el Jupyter Nbviewer

El [Proyecto Jupyter](http://jupyter.org/)  es una aplicación web que te permite crear y compartir documentos que contienen código de diversos lenguajes de programación, ecuaciones,  visualizaciones y texto en diversos formatos. El uso de Jupyter incluye la ciencia de datos, simulación numérica, la modelización en estadística, Machine Learning, etc.

[Jupyter nbviewer](https://nbviewer.jupyter.org/)  es un servicio web gratuito que te permite compartir las versiones de archivos realizados por Jupyter, permitiendo el renderizado de diversos fórmatos incluyendo, código latex.

- [Jupyter Documentation](https://jupyter.readthedocs.io/en/latest/).


### Git y Github

[Git](https://git-scm.com/) es un sistema de control de versiones de gran potencia y versatilidad en el manejo de un gran número de archivos de  código fuente a a través del desarrollo no lineal, es decir vía la gestión rápida de ramas y mezclado de diferentes versiones.

Para poder revisar y aprender los comandos necesarios de Git, puedes darle una ojeada al excelente [tutorial de CodeSchool](https://try.github.io/levels/1/challenges/1) o a la [guía](http://rogerdudler.github.io/git-guide/index.es.html) de Roger Dudle para aprender  Git.

[Github](https://github.com/) es una plataforma de desarrollo colaborativo de software utilizado para alojar proyectos (muchos proyectos importantes como paquetes de R, Django, el Kernel de Linux, se encuentran alojados ahí) utilizando Git y el framework Ruby on Rails.

Podemos instalar Git en Ubuntu utilizando el administrador de paquetes `Apt`:

```bash
c-lara@Lara:~$sudo apt-get update
c-lara@Lara:~$sudo apt-get install git
```


Referencias y Lecturas

- [Usando el GIT](http://www.cs.swarthmore.edu/~newhall/unixhelp/git.php).
- [Practical Git Introduction](http://marc.helbling.fr/2014/09/practical-git-introduction).
- [Visual Git Guide](http://marklodato.github.io/visual-git-guide/index-es.html).


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


## Otros temas de aplicación 

* Recuperación de datos utilizando redes neuronales en R.
* Cadenas de Markov y simulación con R
* Probabilidad y grafos con R
* Introducción a la Inferencia Bayesiana.
* Machine Learning en R:
	- Aprendizaje supervisados.
	- Aprendizaje no supervisados.

* shiny: Framework web para R. 
* Introducción básica al paralelismo en R.
* Algoritmos de programación lineal usando R.
	* Simplex
	* Algoritmo de Karmarkar
	* Método del elipsoide.


* Las librerias plyr y dplyr. La estrategia `split-apply-combine`.
* Solver lineales iterativos en R.
	* Descenso del gradiente.
	* Gradiente conjugado.
	* Precondicionado.



