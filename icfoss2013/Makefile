# Makefile

# target is not a real file
.PHONY: help icfoss

# default help
help:
	@echo "current make version is: "$(MAKE_VERSION)
	@echo "Please use \`make <target>' where <target> is one of"
	@echo ""
	@echo "icfoss		icfoss/2013 workshop in Aakash application development"
	@echo "clean		clean all tmp and pdf files"
	@echo ""

# talk at icofss/2013, Feb 16 and 17
icfoss:	main.pdf
main.pdf:	main.tex beamerthemeFrankfurt.sty 
	pdflatex main.tex
	pdflatex main.tex	#second one for slide numbering: n/N

clean:	
	@echo "removing all tmp+pdf files"
	-rm -rvf *.pdf *~ *.aux *.log *.vrb *.out *.toc *.nav *.snm
