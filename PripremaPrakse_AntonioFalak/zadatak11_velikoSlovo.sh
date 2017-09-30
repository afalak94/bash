#! /bin/bash

dir=$1 #argument za direktorij koji ce se pretrazivati
find $dir -name "my_*" -print #ispisuje na konzolu sve pronadene datoteke
polje=($(find $dir -name "my_*")) #sve datoteke se spremaju unutar polja
for i in "${polje[@]}"; do #loop kroz svaki element polja tj. datoteku
  sed -i '/^[A-Z]/d' $i #pronalazenje redova koji zapocinju velikim slovom i brisanje
done
