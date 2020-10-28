

# El bucle for es distinto a los de otros lenguajes de
# programación. Básicamente, le permite iterar sobre una serie de
# `palabras' contenidas dentro de una cadena



#!/bin/bash
for i in $( ls ); do
    echo item: $i
done



# En la segunda línea declaramos i como la variable que recibirá los
# diferentes valores contenidos en $( ls ).

# La tercera línea podría ser más larga o podría haber más líneas antes
# del done (4).

# `done' (4) indica que el código que ha utilizado el valor de $i ha
# acabado e $i puede tomar el nuevo valor.