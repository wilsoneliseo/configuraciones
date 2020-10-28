#!/bin/bash
path=$1
for i in $( ls $path); do
# para probar en consola: ls|sed 's/-\([a-z]\)/\u\1/g'
    nuevoNombre=$(echo $i|sed 's/-\([a-z]\)/\u\1/g')
    mv $path$i $path$nuevoNombre
done

# COMO USAR SCRIPT

# posiblemente se necesite utilizar antes: 
# rename 's/ /-/g' *.pdf
# rename 'y/[A-Z]/[a-z]/' *.pdf
# rename 's/-\(....\)//' *pdf

# Contexto: Tengo una carpeta llamada test en el escritorio:
#
#     ~/Escritorio/test $ ls
#     criptografia-en-computadores.pdf              criptologia-y-seguridad.pdf
#     criptografia-y-seguridad-en-computadores.pdf  criptopunks.pdf
#
# voy a donde tengo este script y ejecuto:
#              ./renombrarrchivosEnEsteEstilo.sh ~/Escritorio/test/

# Resultado: los archivos de ~/Escritorio/test se renombran y quedan:

#     ~/Escritorio/test $ ls
#     criptografiaEnComputadores.pdf            criptologiaYSeguridad.pdf
#     criptografiaYSeguridadEnComputadores.pdf  criptopunks.pdf
#
# ademas si se quiere renombrarDeEstaForma a-esta-forma cambiar la linea
# cinco con:
#    nuevoNombre=$(echo $i|sed 's/\([a-z]*\)\([A-Z]\)/\1-\2/g')
