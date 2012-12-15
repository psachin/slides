# Makefile

# target is not a real file
.PHONY: help mutt

# default help
help:
	@echo "current make version is: "$(MAKE_VERSION)
	@echo "Please use \`make <target>' where <target> is one of"
	@echo ""
	@echo "mutt		generate latex presentation"
	@echo "clean		clean all tmp and pdf files"
	@echo ""

# dilawar talk on terminal emailers , February 18, 2012
mutt:	mutt.pdf
mutt.pdf:	mutt.tex 
	pdflatex mutt.tex
	pdflatex mutt.tex	#second one for slide numbering: n/N

clean:	
	@echo "removing all tmp+pdf files"
	-rm -rvf *.pdf *~ *.aux *.log *.vrb *.out *.toc *.nav *.snm
