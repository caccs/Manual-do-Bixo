# 
# Makefile para o Manual do Bixo do Centro Acadêmico Pata do Bisão
# gestão 2016/2
#
# por Giovana (giovana.vmorais@gmail.com)
#


REPORT = manual.pdf
LATEX = pdflatex -interaction nonstopmode --shell-escape -output-directory _build
DEPS = ./manual.tex

all: $(REPORT)

$(REPORT): $(DEPS) 
	mkdir _build
	$(LATEX) $<
	$(LATEX) $<
	echo $(basename $<)
	exit 0

.PHONY: clean

clean:
	-rm *.aux
	-rm *.pdf
	-rm *.toc
	-rm -rf ./_build

read:
	evince _build/$(REPORT)

