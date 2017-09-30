#! /bin/bash

pocetak=$1
kraj=$2

if [[ $pocetak -lt 10 && $kraj -gt 100 ]]; then #uvjet granica intervala
  for ((i=$pocetak;i<$kraj;i++)) { #klasicna for loop sintaksa
    if [[ $i -le 50 ]]; then
      continue #nastavlja petlju sa sljedecom iteracijom
    elif [[ $i -eq 75 ]]; then #provjera vrijednosti 75 mora biti prije provjere jeli broj veci od 50
      echo "Obrada gotova!"
      break #izlazi iz petlje
    elif [[ $i -gt 50 ]]; then
      echo "Obradujem $i"
    fi
  }
else
  echo "Predane granice intervala su izvan dopustenih granica."
fi
