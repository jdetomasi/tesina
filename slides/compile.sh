#! /bin/bash
TMP_DIR=temp_notes_123f
echo "Compiling Notes..."
mkdir $TMP_DIR
cp slides.tex $TMP_DIR/notes.tex
cp -r img $TMP_DIR/img
sed -i "s/documentclass.*/\documentclass[notes=only]{beamer}/g" $TMP_DIR/notes.tex
cd $TMP_DIR
cp ../czt.sty .
pdflatex notes.tex
cp notes.pdf ../
cd ..
rm -r $TMP_DIR
echo "Compiling Slides..."
pdflatex slides.tex
