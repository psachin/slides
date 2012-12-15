# Makefile

# target is not a real file
.PHONY: help aakash

# default help
help:
	@echo "current make version is: "$(MAKE_VERSION)
	@echo "Please use \`make <target>' where <target> is one of"
	@echo ""
	@echo "aakash		slide for press meet"
	@echo "clean		clean all tmp and pdf files"
	@echo ""

# demo of aakash apps to press. Delhi, December 12,2012
aakash:	aakashspec.pdf
aakashspec.pdf:	aakashspec.tex aakash-logo.png
	pdflatex aakashspec.tex
	pdflatex aakashspec.tex #second one for slide numbering: n/N

clean:	
	@echo "removing all tmp+pdf files"
	-rm -rvf *.pdf *~ *.aux *.log *.vrb *.out *.toc *.nav *.snm
