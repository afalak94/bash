#! /bin/bash

file=$1 #putanja iz argumenta

vals=($(< $file)) #ucitavanje vrijednosti iz datoteke u array

brojac=0 #broji koliko je brojeva djeljivo s 7
for (( i = ${vals[0]}; i < ${vals[1]}; i++ )); do
  if [ $(($i % 7)) -eq 0 ]; then
    brojac=$((brojac+1))
  else
    continue
  fi
done

echo "$brojac"
