#!/bin/bash

MI_MENSAJE="Hola Mundo"     #No esta permitida espacios en asignacio
MI_MENSAJE_CORTO=Hola;      MI_NUM=1;               MI_PI=3.142 #(1)
MI_OTRO_PI="3.142";         MI_MESCLA=123abc
MIComando=`which less`
echo $MI_MENSAJE;           echo $MI_MENSAJE_CORTO;      read I #(2)
echo $MI_NUM;               echo $MI_PI;                 read I
echo $MI_OTRO_PI;           echo $MI_MESCLA;             read I
echo $MIComando;                                         read I
y=`expr $MI_NUM + 1`;       echo $y;                     read I #(3)
y=`expr $MI_MENSAJE + 1`;   echo $y;                     read I #(4)
y=`expr $MI_PI + 1`;        echo $y;                     read I
echo $I; echo `expr $I + 3`
y=`expr $MI_MESCLA + 1`;    echo $y

#(1) pueden aver varias instrucciones en una linea siempre y cuando
# esten separados por `;` la ultima instruccion va sin `;`

#(2) forma de obtener ingresos del usuario y lo guarda en variable I

#(3) expr es para hacer aritmetica de numeros enteros (solo enteros)

#(4) mensaje de error porque se suma cadena y un numero