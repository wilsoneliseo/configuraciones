#!/bin/bash

for FILE in *.mp3; do

  WITHOUTEXTENSION=$(echo "$FILE" | cut -d '.' -f 1)
  AUTHOR=$(echo "$WITHOUTEXTENSION" | cut -d '_' -f 1)
  NUM=$(echo "$WITHOUTEXTENSION" | cut -d '_' -f 2)
  TITLE=$(echo "$WITHOUTEXTENSION" | cut -d '_' -f 3 | sed 's/-/ /g')
  
  eyeD3 -2 -a "${AUTHOR}" -A "All ears english" -t "${TITLE}" -n $NUM -G 12 -Y "2020" -c es:wilson:sajbochol "${FILE}"
  #-2 is used to generate IDv2.x tags
done

# --------------------
# To all the mp3 files, in the folder let's say OSITO, (it must have the
# structure "AEE_002_Teaching-Tuesday--Key-Phrases-for-Conversation.mp3")
# it puts the following metadata fields:
#
# AEE = AUTHOR
# 002 = NUM
# Teaching Tuesday  Key Phrases for Conversation=TITLE


# --------------------
# runs as:
#            $ ~/Documents/bash/all-ears-english.sh <directory-with-mp3>

#--------------------
# NOTE: Before executing the script, leave all the labels or fields empty:
#         $ eyeD3 --remove-all *
