# Makefile

# target is not a real file
.PHONY: help org

# default help
help:
	@echo "current make version is: "$(MAKE_VERSION)
	@echo "Please use \`make <target>' where <target> is one of"
	@echo ""
	@echo "org		beamer presentaion made in org-mode"
	@echo "clean		clean all tmp and pdf files"
	@echo ""

# beamer presentaion in org-mode
org:	presentaion.pdf
presentaion.pdf:	presentation.tex  presentation.org scipyshiny_small.png
	pdflatex presentation.tex
	pdflatex presentation.tex	#second one for slide numbering: n/N

clean:	
	@echo "removing all tmp+pdf files"
	-rm -rvf *.pdf *~ *.aux *.log *.vrb *.out *.toc *.nav *.snm
