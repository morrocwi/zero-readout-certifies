COQ      ?= coqc
COQTOP   ?= coqtop
LATEX    ?= pdflatex

.PHONY: all verify paper clean

all: verify

## Compile the development and print the assumption set of each main theorem.
verify:
	@cd coq && $(COQ) -q IDM_KeystoneKernel.v
	@cd coq && $(COQ) -q -I . CheckAssumptions.v

## Build both PDFs from source.
paper:
	@cd paper && $(LATEX) -interaction=nonstopmode main.tex >/dev/null
	@cd paper && $(LATEX) -interaction=nonstopmode main.tex >/dev/null
	@cd paper && $(LATEX) -interaction=nonstopmode onepager.tex >/dev/null
	@echo "built paper/main.pdf and paper/onepager.pdf"

clean:
	@rm -f coq/*.vo coq/*.vok coq/*.vos coq/*.glob coq/.*.aux
	@rm -f paper/*.aux paper/*.log paper/*.out
