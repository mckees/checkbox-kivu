#!/bin/bash

# This will output the number after i3-, i5-, i7-, i9-
# This function not supported for Xeon, Atom, Pentium, Celeron, etc
model=$(lscpu | grep -o 'i.-.*' | grep -Eo '[0-9]{1,5}' | head -2 | tail -1)
if [ ${#model} == 4 ]
then
    gen=$(echo $model | head -c 1) 
else
    gen=$(echo $model | head -c 2)
fi

echo $gen

