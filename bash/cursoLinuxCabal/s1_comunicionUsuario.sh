#!/bin/bash

# Esto es un comentario!    
echo "Hola      Mundo"       # Esto es un comentario también!
echo "Hola Mundo"
echo "Hola * Mundo"
echo Hola * Mundo            # Sirve como ls
echo Hola      Mundo
echo "Hola    Mundo"            Mundo
echo "Hola \"*\" Mundo"  #sacar comillas dentro de cadena
echo "\`hola\` Mundo"        #Backtick(`) no es comilla
echo -n 'hola' Mundo         #Sin linea nueva
echo -ne 'HOLA' Mundo \\a \\n\\n\\n  #(1)

#backtick tiene un significado especial para bash. Todo
#lo que este entre backtick se ejecuta primero y su
# resultado se imprime

# (1) e activa los caracteres especiales \\a \\n\\n\\n