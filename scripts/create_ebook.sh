#!/bin/bash
set -x

mkdir -p ./var
rm ./var/apologie_r_barclay.epub ./var/joined_code.md

cat markdown_source/00/*.md > ./var/joined_code.md
cat markdown_source/01/*.md >> ./var/joined_code.md
cat markdown_source/02/*.md >> ./var/joined_code.md
cat markdown_source/03/*.md >> ./var/joined_code.md
cat markdown_source/04/*.md >> ./var/joined_code.md
cat markdown_source/05/*.md >> ./var/joined_code.md
cat markdown_source/06/*.md >> ./var/joined_code.md
cat markdown_source/07/*.md >> ./var/joined_code.md
cat markdown_source/08/*.md >> ./var/joined_code.md
cat markdown_source/09/*.md >> ./var/joined_code.md
cat markdown_source/10/*.md >> ./var/joined_code.md
cat markdown_source/10/*.md >> ./var/joined_code.md
cat markdown_source/11/*.md >> ./var/joined_code.md
cat markdown_source/12/*.md >> ./var/joined_code.md
cat markdown_source/13/*.md >> ./var/joined_code.md
cat markdown_source/14/*.md >> ./var/joined_code.md
cat markdown_source/15/*.md >> ./var/joined_code.md
wc -l ./var/joined_code.md

rm -rvf ./var/pics
rsync -rv pics/ ./var/pics

pandoc \
  ./var/joined_code.md \
  -o ./var/apologie_r_barclay.epub \
  +RTS -M6g -RTS \
  -f commonmark_x \
  --toc-depth=2 \
  --epub-cover-image=pics/barclay.png
  # -t epub2



# okular ./var/apologie_r_barclay.epub
/usr/bin/com.github.johnfactotum.Foliate ./var/apologie_r_barclay.epub
# /usr/bin/com.github.babluboy.bookworm ./var/apologie_r_barclay.epub