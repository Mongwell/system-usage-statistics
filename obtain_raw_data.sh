#!/bin/bash


#core usage percentage by usr and ni, then sys
for i in {0..7}
do
    top -bn 1 | grep %Cpu$i | awk '{printf substr($3, 1, length($3)-4)}END{printf ","}END{printf substr($3, 6)}END{printf ";"}' >> py-input.txt
done

printf "\n" >> py-input.txt

#core temperatures in Fahrenheit
for i in {0..3}
do
    sensors -f | grep "Core $i" | awk '{printf substr($3, 2, length($3)-3)}END{printf ","}' >> py-input.txt
done

printf "\n" >> py-input.txt

#RAM usage as used/total
free | grep Mem | awk '{printf substr($3, 1, length($3)-1)}END{printf "/"}END{print substr($2, 0, length($2)-1)}' >> py-input.txt
