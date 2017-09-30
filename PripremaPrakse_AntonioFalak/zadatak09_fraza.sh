#! /bin/bash

izlaznaDat=$1
searchDir=$2
fraza=$3
truncate -s 0 $izlaznaDat #brisanje sadrzaja datoteke

realSearchDir=$(realpath $searchDir) #dohvacanje absolutne putanje direktorija

#ako se naredbi find preda absolutna putanja, rezultati ce biti s absolutnim putanjama
find $realSearchDir -name "*$fraza*.txt" -print >> $izlaznaDat
