#!/bin/sh

X=-3
if [ $X -lt 0 ]        #then debe ser en linea nueva ($x <= 0)
  then
    echo "\$X = $X es menor que cero"
fi

if [ "$X" -gt "0" ]; then   # `;` sirve para then en misma linea (1)
  echo "\$X = $X es mayor que cero"
else
  echo "\$X = $X es menor que cero"
fi

#Nota: documentarse en: $ man test

#(1)puede ver que escribir "$X" y $X en la condicion es irelevante
#lo mismo que "0" y 0