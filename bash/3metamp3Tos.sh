#!/bin/bash
CONTADOR=0
for FILE in *.mp3; do

  let CONTADOR=CONTADOR+1
  NAME=$(echo "$FILE" | cut -d '.' -f 1)
  ARTISTA=$(echo "$NAME" | cut -d '_' -f 1)
  TITULO=$(echo "$NAME" | cut -d '_' -f 2)

  eyeD3 -2  -a "${ARTISTA}" -t "${TITULO}" -n $CONTADOR -G 12 -c es:"Poner descripcion":"poner comentario" "${FILE}"
  #el -2 se utiliza para que genere tags IDv2.x
done

# --------------------
# de un archivo mp3 llamado bronco-queNoQuedeHuella.mp3 saca:

# bronco=ARTISTA
# queNoQuedeHuella=TITULO

# --------------------
# se ejecuta como:
#            ~/carpeta $ ~/Documentos/bash/3metamp3-tos.sh


#--------------------
# Esto es para dejar vacio todas las etiquetas o campos

#         $ eyeD3 --remove-all-comments *
#         $ eyeD3 --remove-all-lyrics *
#         $ eyeD3 --remove-all-images *
#         $ eyeD3 --remove-all-objects *
#         $ eyeD3 --remove-all *


# --------------------
# Algunos valores para Genre son (poner: -G num):
# |------+---------------|
# |  num | clasificacion |
# |------+---------------|
# |  12  | Other         |
# |  13  | Pop           |
# |  15  | Rap           |
# |  16  | Reggae        |
# |  17  | Rock          |
# |  32  | Classical     |
# | 103  | Opera         |
# | 123  | A capella     |
# | 137  | Heavy Metal   |
# | 142  | Merengue      |
# | 143  | Salsa         |
# |------+---------------|
