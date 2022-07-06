#!/bin/bash
set -x

mkdir -p ./var
rm ./var/apologie_r_barclay.odt
cat markdown_source/*/*.md > ./var/joined_code.md
wc -l ./var/joined_code.md

pandoc \
  ./var/joined_code.md \
  -o ./var/apologie_r_barclay.odt

libreoffice ./var/apologie_r_barclay.odt 
