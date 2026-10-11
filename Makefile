LATEXMK ?= latexmk
MAIN = main

.PHONY: pdf clean

pdf:
	TEXINPUTS=vendor:$(TEXINPUTS) $(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error $(MAIN).tex

clean:
	$(LATEXMK) -C $(MAIN).tex
