#! /bin/bash

dir=$1
counter=0
files=( $(find $dir -name "*") ) #sprema sve datoteke unutar polja
for i in ${files[*]}; do #loop kroz ime svake datoteke u polju
  if [[ "$i" =~ ABCD[0-9]{4}[_][A-Z]{3}[-][A-Za-z0-9]+$ ]]; then #ako ime odgovara regexu
    let "counter++" #brojac se povecava
    echo $i #ispis imena datoteke koje odgovara regexu
  fi
done
echo "Broj ispravno napisanih datoteka: $counter"
