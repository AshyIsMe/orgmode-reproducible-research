CC=gcc
EMACS=emacs
BATCH_EMACS=$(EMACS) --batch -Q -l init.el document.org
REQUIREMENTS=curl dot perl python R sh sqlite3

all: document.pdf

document.pdf: document.org init.el
	$(BATCH_EMACS) -f org-latex-export-to-pdf

check:
	for req in $(REQUIREMENTS); do \
		which $$req > /dev/null || echo "MISSING DEPENDENCY $$req"; \
	done

clean:
	rm -f *.aux *.log document.ps *.dvi *.blg *.bbl *.toc *.tex *~ *.out document.pdf 
