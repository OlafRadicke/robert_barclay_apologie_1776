#!/bin/bash

mkdir -p ./var

pandoc \
  markdown_source/*.md \
  -o ./var/apologie_r_barclay.epub

okular ./var/apologie_r_barclay.epub
# calibre --start-in-tray ./var/apologie_r_barclay.epub

# --metadata title="Apologie" \
# --epub-metadata=./markdown_source/00_00_metadata.yaml \