!#/bin/bash
mkdir _build
pdflatex -interaction nonstopmode -output-directory _build ./manual.tex
pdflatex -interaction nonstopmode -output-directory _build ./manual.tex

exit 0

