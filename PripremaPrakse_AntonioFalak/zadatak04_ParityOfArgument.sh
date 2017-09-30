#! /bin/bash

X=$1 #dohvačanje prvog predanog parametra
if ! [[ "$X" =~ ^[0-9]+$ ]] #provjera je li argument integer
    then
        echo "Skripta prima samo cjelobrojne vrijednosti!"
    else #ako je integer, provjerava parnost broja
      if [ $(($X % 2)) -eq 0 ]; then #aritmeticke operacije unutar $(())
        echo "$X je paran broj."
      else
        echo "$X je neparan broj."
      fi
fi
