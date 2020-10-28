#!/bin/bash
cd /media/wegt/wls/sj
for f in *.org; do
    # echo "$f"

    BASENAME=$(echo "$f" | cut -d'.' -f1)
    # echo "${BASENAME}".zip

    MONTH=$(echo "$BASENAME"| cut -d'-' -f2)
    # echo "${MONTH}"

    DAY=$(echo "$BASENAME"| cut -d'-' -f3)
    # echo "${DAY}"    
done
