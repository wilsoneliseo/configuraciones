#!/bin/sh

X=-3
if [ $X -lt 0 ]        #then debe ser en linea nueva
  then
    echo "\$X = $X es menor que cero"
fi

if [ "$X" -gt "0" ]; then   #; sirve para then también
  echo "\$X = $X es mayor que cero"
else
  echo "\$X = $X es menor que cero"
fi

# fuente:
# http://wiki.cabal.mx/wiki/Curso_de_Programaci%C3%B3n_en_Bash/S5.sh
