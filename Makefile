SHELL := /bin/sh

COQC   ?= coqc
LATEX  ?= pdflatex

.PHONY: all verify paper audit check clean

all: check

verify:
	@COQC='$(COQC)' sh scripts/check_assumptions.sh

paper:
	@cd paper && $(LATEX) -halt-on-error -file-line-error -interaction=nonstopmode main.tex >/dev/null
	@cd paper && $(LATEX) -halt-on-error -file-line-error -interaction=nonstopmode main.tex >/dev/null
	@cd paper && $(LATEX) -halt-on-error -file-line-error -interaction=nonstopmode onepager.tex >/dev/null
	@if grep -F 'Overfull \hbox' paper/main.log paper/onepager.log >/dev/null || grep -F 'Overfull \vbox' paper/main.log paper/onepager.log >/dev/null; then \
		echo "LaTeX layout overflow detected" >&2; \
		exit 1; \
	fi
	@if command -v pdfinfo >/dev/null 2>&1; then \
		test "$$(pdfinfo paper/onepager.pdf | awk '/^Pages:/ {print $$2}')" = "1"; \
	fi
	@rm -f paper/*.aux paper/*.log paper/*.out
	@echo "built paper/main.pdf and paper/onepager.pdf with no overfull boxes"

audit:
	@sh scripts/check_repo.sh

check: verify paper audit

clean:
	@rm -f coq/*.vo coq/*.vok coq/*.vos coq/*.glob coq/.*.aux
	@rm -f paper/*.aux paper/*.log paper/*.out
