#! /bin/bash

Dat=$1
echo "Unesite 10 rijeci za zapis u datoteku: "
truncate -s 0 $Dat #brisanje sadržaja datoteke

for (( i = 0; i < 10; i++ )); do
  read word #citanje inputa u varijablu word
  echo $word >> $Dat #append varijable u datoteku
done
