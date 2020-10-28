#!/bin/bash
CONTADOR=0
for FILE in *.mp3; do

  let CONTADOR=CONTADOR+1
  SIN_EXTENCION=$(echo "$FILE" | cut -d '.' -f 1)
  ARTISTA=$(echo "$SIN_EXTENCION" | cut -d '_' -f 1)
  ALBUM=$(echo "$SIN_EXTENCION" | cut -d '_' -f 2)
  TITLE=$(echo "$SIN_EXTENCION" | cut -d '_' -f 3-5)

  eyeD3 -2 -a "${ARTISTA}" -A "${ALBUM}" -t "${TITLE}" -n $CONTADOR -G 12 -Y "2017" -c es:wilson:organizadoPorWeGT "${FILE}"
  #el -2 se utiliza para que genere tags IDv2.x
done



# --------------------
# a todos los archivos mp3, de la carpeta digamos OSITO, (debe tener la estruc-
# tura "level3_Unit14_Pg093_Ex03_GrammarFocus.mp3") pone a los campos de meta-
# datos lo siguiente:
#
# level3=ARTISTA
# Unit14=ALBUM
# Pg093_Ex03_GrammarFocus=TITLE

# --------------------
# se ejecuta como:
#            ~/OSITO $ ~/Documentos/bash/renombrarAudiosIngles.sh


#--------------------

# OJO: Antes de ejecutar el script dejar vacio todas las etiquetas o campos:
#         $ eyeD3 --remove-all *
