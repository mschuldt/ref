#!/usr/bin/env bash

files="cvpcb
eeschema
gerbview
getting_started_in_kicad
gui_translation_howto
idf_exporter
kicad
pcbnew
pl_editor
plugins"

for file in $files 
do
    wget docs.kicad-pcb.org/stable/en/${file}.html
    wget docs.kicad-pcb.org/stable/en/${file}.pdf
    mv ${file}.html kicad_${file}.html
    mv ${file}.pdf kicad_${file}.pdf
done
