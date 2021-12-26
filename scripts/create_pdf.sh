#!/bin/bash

mkdir -p ./var

pandoc markdown_source/*.md \
  -o ./var/apologie_r_barclay.pdf