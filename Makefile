# 
# Makefile para o Manual do Bixo do Centro Acadêmico Pata do Bisão
# gestão 2016/2
#
# por Giovana (giovana.vmorais@gmail.com)
#


REPORT = manual.pdf
LATEX = pdflatex --shell-escape
DEPS = manual.tex

all: $(REPORT)

$(REPORT): $(DEPS) 
	$(LATEX) $<
	$(LATEX) $<
	echo $(basename $<)

.PHONY: clean

clean:
	-rm *.{aux,log,toc}

read:
	evince $(REPORT)

