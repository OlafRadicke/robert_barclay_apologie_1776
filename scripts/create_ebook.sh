#!/bin/bash
set -x

mkdir -p ./var
rm ./var/apologie_r_barclay.epub ./var/joined_code.md

cat hugo/content/00/*.md > ./var/joined_code.md
cat hugo/content/01/*.md >> ./var/joined_code.md
cat hugo/content/02/*.md >> ./var/joined_code.md
cat hugo/content/03/*.md >> ./var/joined_code.md
cat hugo/content/04/*.md >> ./var/joined_code.md
cat hugo/content/05/*.md >> ./var/joined_code.md
cat hugo/content/06/*.md >> ./var/joined_code.md
cat hugo/content/07/*.md >> ./var/joined_code.md
cat hugo/content/08/*.md >> ./var/joined_code.md
cat hugo/content/09/*.md >> ./var/joined_code.md
cat hugo/content/10/*.md >> ./var/joined_code.md
cat hugo/content/10/*.md >> ./var/joined_code.md
cat hugo/content/11/*.md >> ./var/joined_code.md
cat hugo/content/12/*.md >> ./var/joined_code.md
cat hugo/content/13/*.md >> ./var/joined_code.md
cat hugo/content/14/*.md >> ./var/joined_code.md
cat hugo/content/15/*.md >> ./var/joined_code.md
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