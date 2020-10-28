#!/bin/bash

X=5
echo "Una \" se escribe \\\""
echo "Un \\  se escribe \\\\"
echo "Un \` se escribe \\\`"
echo "Un \$ se escribe \\\$"
echo -ne "Si quieres escribir \"El valor de \$X es $X,\"\nescribe \\\"El valor de \\\$X es \$X,\\\"\\\n\n" #(1)

#(1) -e  es para activar los caracteres especiales. En este caso porque
#se utiliza el caracter de escape `\n` para realizar un salto de linea