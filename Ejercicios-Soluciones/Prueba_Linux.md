# Prueba sobre Comandos Linux


## Lista de Ejercicios

1 .Experimenta con los siguientes comandos e interpreta tus resultados:

```bash
 echo hello world
passwd
date
hostname
arch
uname -a
dmesg | more
uptime
who am i
who
id
last
finger
w
top 
echo $SHELL
echo {con,pre}{sent,fer}{s,ed}
man "automatic door"
man ls
man 
who dime el sortilego de la fortuna
lost
clear
cal 2000
cal 9 1752(Hay algo inusual aquí?)
bc -l(usa  Ctrl-d para salir)
echo 5+4 | bc -l
yes please(usa  Ctrl-c para salir)
time sleep 5
history
```

2 . Prueba en secuencia los siguientes comandos y explica tus pasos

```bash
    cd
    pwd
    ls -al
    cd .
    pwd     (donde te encuentras?)
    cd ..
    pwd
    ls -al
    cd ..
    pwd
    ls -al
    cd ..
    pwd     (que ocurre ahora)
    cd /etc
    ls -al | more
    cat passwd
    cd -
    pwd
```

3 . Realiza las siguientes actividades:

* Crea dos  directorios llamados **a1** y **a2** en el directorio `/home`.
* Copia el archivo `/etc/passwd` al directorio **a1** y escribe las primeras 30 lineas del archivo [http://lifehacker.com/5633909/who-needs-a-mouse-learn-to-use-the-command-line-for-almost-anything](http://lifehacker.com/5633909/who-needs-a-mouse-learn-to-use-the-command-line-for-almost-anything) al directorio **a2**.
* Usa `find` para mostrar los nombres  de todos los archivos en árbol de directorios de `/home`. 
* Usa `locate`para encontrar todos los nombres de archivos que contengan la palabra **commands** en el árbol de directorios de `/home`.
* Utilice `find` y  `grep ` y `sort` para mostrar una lista ordenada de todos los archivos en  todos los subdirectorios  de `/ home` que contienen la palabra `commands , R, Pythom` en algún lugar dentro de ellos.

4 . Sigue los siguientes pasos para ejecutar el siguiente script llamado **bash_script**:

```bash
#!/bin/sh
# este es un comentario
echo "El numero de argumentos es  $#"
echo "Los argumentos son $*"
echo "El primero es $1"
echo "Mi numero de proceso es  $$"
echo "Ingresa un numero desde el teclado: "
read numero
echo "El numero que has ingresado es $numero" 
```
Para ejecutar el script se realiza lo siguiente:

```bash
ls -l bash_script
chmod +x bash_script
ls -l bash_script
./bash_script hola a todos

```

Ejecuta el siguiente script y explica que es lo que hace.

```bash
#!/bin/sh
for f in $*
do
  if [ -f  $f -a  ! -x  $f ]
  then
    case $f in
    core)
      echo "$f: archivo de memoria"
      ;;
    *.c)
     echo "$f: un programa en C"
      ;;
    *.cpp|*.cc|*.cxx)
      echo "$f: un programa en C+"
      ;;
    *.txt)
      echo "$f: un archivo de texto"
      ;;
    *.pl)
      echo "$f: un script de Perl"
      ;;
    *.html|*.htm)
      echo "$f: un documento web"
      ;;
    *)
      echo "$f: aparece ser  "`file -b $f`
      ;;
    esac
  fi
done
```