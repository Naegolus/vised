
all: main.pdf

main.pdf:
	pdflatex -shell-escape main.tex
	convert main.pdf logo.png

clean:
	@echo Cleaning up
	@rm -f *.aux
	@rm -f *.bbl
	@rm -f *.bcf
	@rm -f *.blg
	@rm -f *.dvi 
	@rm -f *.log
	@rm -f *.toc
	@rm -f *.out
	@rm -f *.pdfsync
	@rm -f *.blg
	@rm -f *.ps
	@rm -f *.tps
	@rm -f *.run.xml
	@rm -f *.synctex.gz
	@rm -f *-blx.bib
	@rm -f *.lot
	@rm -f *.lof
	@rm -f *.pdf
	@rm -f *.png
	@echo done.

help:
	@echo
	@echo 'Usage: make [TARGET]'
	@echo 'TARGETS:'
	@echo '  all                  default. build this document'
	@echo '  clean                clean this directory'
	@echo '  help                 print this message'

