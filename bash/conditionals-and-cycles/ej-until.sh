#!/bin/bash 

CONTADOR=20
until [  $CONTADOR -lt 10 ]; do
    echo CONTADOR $CONTADOR
    let CONTADOR-=1
done