#!/bin/bash

X=4

if [ $X -lt 0 ] #(1)
  then
    echo "\$X = $X que es menor que cero"
  elif [ $X -eq 4 ]; then #(2)
    echo "\$X es igual a 4"
  else
    echo "\$X = $X que no es menor que cero"
fi

#(1) lt es igual a menor que
#(2) eq es igual