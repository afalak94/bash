#! /bin/bash

korisnik=$1

if id "$korisnik" >/dev/null 2>&1; then #provjera postoji li trazeni korisnik
        echo "User exists, his PIDs are: "
        ps -u $korisnik -A -o pid
elif ! id "$korisnik" >/dev/null 2>&1; then #skrivanje stderr poruke
        echo "User does not exist!"
fi
