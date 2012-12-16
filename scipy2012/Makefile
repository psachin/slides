# Makefile

# target is not a real file
.PHONY: help scipy 

# default help
help:
	@echo "current make version is: "$(MAKE_VERSION)
	@echo "Please use \`make <target>' where <target> is one of"
	@echo ""
	@echo "scipy		scipy/2012 talk on Python on Aakash"
	@echo "clean		clean all tmp and pdf files"
	@echo ""

# talk at scipy/2012, December 27-29, 2012
scipy:	main.pdf
main.pdf:	main.tex beamerthemeFrankfurt.sty 
	pdflatex main.tex
	pdflatex main.tex	#second one for slide numbering: n/N

clean:	
	@echo "removing all tmp+pdf files"
	-rm -rvf *.pdf *~ *.aux *.log *.vrb *.out *.toc *.nav *.snm
