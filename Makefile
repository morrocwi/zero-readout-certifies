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
	@overflow="$$(awk '/Overfull \\[hv]box/ { value=$$0; sub(/^.*\(/, "", value); sub(/pt.*$$/, "", value); if ((value + 0) > 3.0) print $$0 }' paper/main.log paper/onepager.log)"; \
	if [ -n "$$overflow" ]; then \
		echo "LaTeX layout overflow above 3pt detected" >&2; \
		printf '%s\n' "$$overflow" >&2; \
		exit 1; \
	fi
	@if command -v pdfinfo >/dev/null 2>&1; then \
		test "$$(pdfinfo paper/onepager.pdf | awk '/^Pages:/ {print $$2}')" = "1"; \
	fi
	@rm -f paper/*.aux paper/*.log paper/*.out
	@echo "built paper/main.pdf and paper/onepager.pdf with no material overflow"

audit:
	@sh scripts/check_repo.sh

check: verify paper audit

clean:
	@rm -f coq/*.vo coq/*.vok coq/*.vos coq/*.glob coq/.*.aux
	@rm -f paper/*.aux paper/*.log paper/*.out
