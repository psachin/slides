# Makefile

# target is not a real file
.PHONY: help csi

# default help
help:
	@echo "current make version is: "$(MAKE_VERSION)
	@echo "Please use \`make <target>' where <target> is one of"
	@echo ""
	@echo "csi		csi-mumbai 2013 demo session on Aakash"
	@echo "clean		clean all tmp and pdf files"
	@echo ""

# csimumbai 2013, feb 1, 2013
csi:	main.pdf
main.pdf:	main.tex beamerthemeFrankfurt.sty 
	pdflatex main.tex
	pdflatex main.tex	#second one for slide numbering: n/N

clean:	
	@echo "removing all tmp+pdf files"
	-rm -rvf *.pdf *~ *.aux *.log *.vrb *.out *.toc *.nav *.snm
