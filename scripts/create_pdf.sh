#!/bin/bash

mkdir -p ./var

pandoc markdown_source/*/*.md \
  --toc \
  --toc-depth=1 \
  -o ./var/apologie_r_barclay.pdf

okular ./var/apologie_r_barclay.pdf