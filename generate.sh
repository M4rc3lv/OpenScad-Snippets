#!/bin/bash
#Maak png-afbeeldingen van alle OpenScad bestanden

cd Db
for f in ./*.scad; do
 filename=$(basename -- "$f")
 extension="${filename##*.}"
 filename="${filename%.*}"
 
 if ! test -f "$filename.png"; then
  # Png bestaat nog niet
  openscad -o "$filename".png --colorscheme Nature "$f"
 fi
done

