#!/bin/bash
RAW_FILES=/home/pi/raw/*.pdf
OUT=/home/pi/scans

for filepath in $RAW_FILES
do
  [ -e "$filepath" ] || continue
  file=$(basename "$filepath" .pdf)
  echo "Ocring $file file..."

  ocrmypdf -l deu --rotate-pages --deskew $filepath "$OUT/$file.pdf" --jobs 1 --quiet && rm -f $filepath
done