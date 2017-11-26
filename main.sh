#!/bin/bash


#core usage percentage by usr and ni, then sys
for i in {0..7}
do
    top -bn 1 | grep %Cpu7 | awk '{printf substr($3, 1, length($3)-4)}END{printf ", "}END{print substr($3, 5)}' >> py-input.txt
done

#core temperatures in Fahrenheit
sensors -f | grep Core | awk '{print substr($3, 2, length($3)-3)}' >> py-input.txt

#RAM usage as used/total
free | grep Mem | awk '{printf substr($3, 1, length($3)-1)}END{printf "/"}END{print substr($2, 0, length($2)-1)}' >> py-input.txt

#insert python script for averaging

rm py-input.txt
