#!/bin/bash

for FILE in *.mp3; do

  WITHOUTEXTENSION=$(echo "$FILE" | cut -d '.' -f 1)
  AUTHOR=$(echo "$WITHOUTEXTENSION" | cut -d '_' -f 1 | sed 's/-/ /g')
  TITLE=$(echo "$WITHOUTEXTENSION" | cut -d '_' -f 2 | sed 's/-/ /g')
  
  eyeD3 -2 -a "${AUTHOR}" -A "To learn English" -t "${TITLE}" -G 12 -Y "2020" -c es:wilson:sajbochol "${FILE}"
  #-2 is used to generate IDv2.x tags
done

# --------------------
# To all the mp3 files, in the folder let's say OSITO, (it must have the
# structure "eagles_hotel-california.mp3") it puts the following
# metadata fields:
#
# eagles = AUTHOR
# hotel california=TITLE


# --------------------
# runs as:
#            $ ~/Documents/bash/songs-to-learn-english.sh <directory-with-mp3>

#--------------------
# NOTE: Before executing the script, leave all the labels or fields empty:
#         $ eyeD3 --remove-all *
