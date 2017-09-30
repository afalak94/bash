#! /bin/bash

prvi=$1 #spremanje parametara u varijable jer unutar funkcije mogu
numArgs=$# #dohvatiti parametre funkcije
function ispravnostArg() {
  if [[ -z "$prvi" || "$numArgs" -gt 2 ]]; then #je li prvi argument prazan string te postoji li vise od 2 argumenta
    ispisUputa #pozivanje druge funkcije
    errMsg #pozivanje trece funkcije
  else
    echo "Predan ispravan broj argumenata!"
  fi
}

function ispisUputa() {
  echo "Program zahtjeva predavanje jednog ili eventualno dva parametra."
}

function errMsg() {
  echo "Pogreška!"
  return #izlazi iz skripte
}

ispravnostArg #pozivanje prve funkcije
