#! /bin/bash

datoteka=$1
rijeci=("Lorem" "te" "linux" "bash")
#sortiranje po abecedi
rijeciABC=($(for each in ${rijeci[@]}; do echo $each; done | sort))


echo "U datoteci $datoteka nalaze se sljedece rijeci:"
echo "----------------"
echo "Rijec (broj ponavljanja)"
echo "----------------"
for i in ${rijeciABC[@]}; do #zamjenjuje se svaki razmak s \n, dohvaca se trazena rijec te se broje dohvacene rijeci
  broj=$(tr ' ' '\n' < $datoteka | grep -i "\<$i\>" | wc -l) #grep -i je case insensitive
  echo $i "("$broj")"
done
echo "----------------"
