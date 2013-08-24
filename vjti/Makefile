# Makefile

# target is not a real file
.PHONY: help tools

# default help
help:
	@echo "current make version is: "$(MAKE_VERSION)
	@echo "Please use \`make <target>' where <target> is one of"
	@echo ""
	@echo "tools		UNIX tools, VJTI, mumbai"
	@echo "clean		clean all tmp and pdf files"
	@echo ""

# UNIX tools workshop at VJTI, Mumbai Sat Aug 24 2013
tools: tools.pdf
tools.pdf:	tools.tex beamerthemeFrankfurt.sty
	pdflatex tools.tex
	pdflatex tools.tex
clean:	
	@echo "removing all tmp+pdf files"
	-rm -rvf *.pdf *~ *.aux *.log *.vrb *.out *.toc *.nav *.snm
