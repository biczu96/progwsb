#!/bin/bash
#
# ZADANIE 0F
# Bartosz Bicz
# 02.03.2018 Piątek 11:15 TP
# 
# program zlicza w zadanym folderze pliki z uprawnieniami execute
#

licznik=0

for file in ls $1
do
	if [ -x $1/$file ];
	then
		licznik=$((licznik+1))
	fi
done

echo "liczba plikow execute: $licznik"