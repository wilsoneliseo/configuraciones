#!/bin/bash

clear
echo "========== >$(basename $0) comienza ahora =========="
echo

echo cp "$HOME"/.emacs "$HOME"/Documents/config
cp "$HOME"/.emacs "$HOME"/Documents/config

echo cp "$HOME"/.bash_aliases "$HOME"/Documents/config
cp "$HOME"/.bash_aliases "$HOME"/Documents/config

echo cp "$HOME"/.config/zathura/zathurarc "$HOME"/Documents/config
cp "$HOME"/.config/zathura/zathurarc "$HOME"/Documents/config

echo cp "$HOME"/.xournal/config "$HOME"/Documents/config
cp "$HOME"/.xournal/config "$HOME"/Documents/config

echo ""$USER", desea sincronizar con USB wls? y/n"
read RESP

usb_wls=/media/"$USER"/wls/

if [ "$RESP" = "y" ] || [ "$RESP" = "Y" ]; then
    if [ -d "$usb_wls" ]; then
	echo rsync -av --delete "$HOME"/Documents/ "$usb_wls"
	rsync -av --delete "$HOME"/Documents/ "$usb_wls"
    else
	echo "No conectado "$usb_wls", por lo que no sincronizo"
    fi    
fi


echo "========== #$(basename $0) finaliza ahora =========="
