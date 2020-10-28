#!/bin/bash
CONT=0
for FILE in *; do
  let CONT=CONT+1
  ITEM=$(echo "$FILE")
  ITEM_WITHOUT_EXT=$(echo "$FILE" | cut -d '.' -f 1)
  EXT_ITEM=$(echo "$FILE" | cut -d '.' -f 2)
  mv ${ITEM} $1${CONT}.${EXT_ITEM}  
done

# Ejemplo de ejecucion:
#     wilson@debian /home/Escritorio $ ~/Documentos/bash/renombradoGuipil.sh <parametro>
#
# Que hace:
#     renombra todos los archivos del directorio actual cambiandolo
#     por el parametro pasado concatenado a un contador