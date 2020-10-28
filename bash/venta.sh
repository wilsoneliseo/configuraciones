#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Debe ser solo un parametro"
    exit 1
fi

# EJEMPLO DE LLAMADA:
# ~/dc/bash/venta.sh /media/wegt/wls/venta/2018/matec2/1230-122637.svg
# entonces:
# $1=/media/wegt/wls/venta/2018/matec2/1230-122637.svg

dir="$(dirname "$1")"
# dir=/media/wegt/wls/venta/2018/matec2

dir_up="$(dirname "$dir")"
# dir_up=/media/wegt/wls/venta/2018

name="$(basename "$dir")"	# matec2
name_up="$(basename "$dir_up")"	# 2018
file="$(basename "$1")"		# 1230-122637.svg
base=${file%.*}			# 1230-122637

inkscape -e "$dir"/"$name"_"$name_up$base".png $1
# inkscape -e /media/wegt/wls/venta/2018/matec2/matec2_20181230-122637.png /media/wegt/wls/venta/2018/matec2/1230-122637.svg
echo "COMANDO UNO"
echo "inkscape -e $dir"/"$name"_"$name_up$base".png $1

echo "COMANDO DOS"
convert "$dir"/"$name"_"$name_up$base".png "$dir"/"$name"_"$name_up$base".jpg
echo "convert $dir"/"$name"_"$name_up$base".png "$dir"/"$name"_"$name_up$base".jpg

echo "COMANDO TRES"
rm "$dir"/"$name"_"$name_up$base".png
echo "rm $dir"/"$name"_"$name_up$base".png

echo "COMANDO CUATRO"
mv "$dir"/"$name"_"$name_up$base".jpg ~/Desktop
echo "mv $dir"/"$name"_"$name_up$base".jpg ~/Desktop


exit 0
