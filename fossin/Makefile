# Makefile

# target is not a real file
.PHONY: help fossin 

# default help
help:
	@echo "current make version is: "$(MAKE_VERSION)
	@echo "Please use \`make <target>' where <target> is one of"
	@echo ""
	@echo "fossin		foss.in/2012 talk on Hacking Android bootloader slides"
	@echo "clean		clean all tmp and pdf files"
	@echo ""

# talk at foss.in/2012, November 28, 2012
fossin:	bootloader.pdf
bootloader.pdf:	bootloader.tex logo.png cm.jpg booting.png partition_idea_blade.png inside-bootimage.png initrc.png em2_cropd.png
	pdflatex bootloader.tex
	pdflatex bootloader.tex	#second one for slide numbering: n/N

clean:	
	@echo "removing all tmp+pdf files"
	-rm -rvf *.pdf *~ *.aux *.log *.vrb *.out *.toc *.nav *.snm
