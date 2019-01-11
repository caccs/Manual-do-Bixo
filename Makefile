# 
# Makefile para o Manual do Bixo do Centro Acadêmico Pata do Bisão
# gestão 2016/2
#
# por Giovana (giovana.vmorais@gmail.com)
#


REPORT = manual.pdf
LATEX = pdflatex -interaction nonstopmode -halt-on-error --shell-escape -output-directory _build
DEPS = ./manual.tex

all: $(REPORT)

$(REPORT): $(DEPS) 
	mkdir _build
	$(LATEX) $<
	$(LATEX) $<
	echo $(basename $<)
	$(LATEX) $<

.PHONY: clean

clean:
	-rm -rf ./_build

read:
	evince _build/$(REPORT)

