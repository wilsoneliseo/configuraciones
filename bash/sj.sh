#!/bin/bash
if [ $# -ne 1 ]; then
    echo "El numero de parametros debe ser de uno"
    exit 1
fi


if [ -f $1 ]; then

    # EJEMPLO DE LLAMADA
    # wegt@hpc$ ~/dc/bash/sj.sh /media/wegt/wls/sj/2019-01-09.org
    # entonces:
    # $1=/media/wegt/wls/sj/2019-01-09.org

    dir="$(dirname "$1")"
    # dir=/media/wegt/wls/sj

    cd "$dir"

    FILE="$(basename "$1")"		# 2019-01-09.org
    BASE=${FILE%.*}			# 2019-01-09
    
    EXT=$(echo "$FILE" | cut -d'.' -f2)    

    if [ $EXT = org ]; then
	# echo "si es un archivo org"

	echo "CONTRASENA PARA FUENTE ORG: "
	zip -e $BASE.zip "$FILE"

	emacs --batch "$FILE" -f org-html-export-to-html # File: emacs.info,  Node: Initial Options,  Next: Command Example,  Prev: Action Arguments,  Up: Emacs Invocation


	echo "CONTRASENA PARA VISTA: "
	zip -e vista_$BASE.zip $BASE.html
	rm $BASE.html
	mv vista_$BASE.zip ~/dk/

	rm $BASE.org

	if [ -f $BASE.org~ ]; then
	    rm $BASE.org~
	fi

	if [ -f $BASE.html~ ]; then
	    rm $BASE.html~
	fi
    else
	echo $1 "existe pero debe ser un archivo org"
    fi    
else
    echo $1 "no es ningun archivo"
fi
