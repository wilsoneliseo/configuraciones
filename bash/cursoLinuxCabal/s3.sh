#!/bin/sh

#notar que la primer linea dice sh y bash. Sh es otra terminal pero 
#parece que es casi igual que bash. Es buena idea usar sh por compa-
#tibilidad ya que sh se usaba antes y si no queremos que el script
#de errores en un sistema con sh
echo -n "Como te llamas? "
read USUARIO_NOMBRE
echo "Hola $USUARIO_NOMBRE" #(1)
#echo "Me voy a crear un archivo que se llama $USUARIO_NOMBRE_Archivo"
echo "Me voy a crear un archivo que se llama ${USUARIO_NOMBRE}_Archivo" #(2)
#touch $USUARIO_NOMBRE_Archivo
touch "${USUARIO_NOMBRE}_Archivo"

#(1)estamos deferenciando una variable. Cuando es asi no se necesita
#poner la variable entre llaves

#(2)estamos concatenando una variable. Por tanto, es menester poner la
#variable entre llaves