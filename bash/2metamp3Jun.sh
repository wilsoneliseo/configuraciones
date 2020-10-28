#!/bin/bash

for FILE in *.mp3;
do
  # String year, song and artist
  NAME=$(echo "$FILE" | cut -d'.' -f1)
  YEAR=$(echo "$NAME" | cut -d'-' -f1)
  SONG=$(echo "$NAME" | cut -d'-' -f2)
  ARTIST=$(echo "$NAME" | cut -d'-' -f3)

  # Trim leading and trailing whitespaces
  YEAR=$(echo "${YEAR}" | awk '{gsub(/^ +| +$/,"")} {print $0}')
  SONG=$(echo "${SONG}" | awk '{gsub(/^ +| +$/,"")} {print $0}')
  ARTIST=$(echo "${ARTIST}" | awk '{gsub(/^ +| +$/,"")} {print $0}')

  # Set new ID3 tags
  eyeD3 -2 -Y "${YEAR}" -t "${SONG}" -a "${ARTIST}" "${FILE}"
done