#! /bin/bash

direktorij=$1 #prvi argument je putanja direktorija koji se pretrazuje
pristup=$2 #unosi se troznamenkasti broj tj. oktalno pravo pristupa npr. 754

files=( $(find . -name "my_*") ) #array putanja do trazenih datoteka
echo "Prava pristupa prije promjene:"
tree -p | grep my_* #potrebno instalirati tree (sudo apt install tree)

chmod $pristup ${files[*]}
echo "Prava pristupa nakon promjene:"
tree -p | grep my_*
