# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# --                                                                         --
# --  This file is part of the Visual Software Editor project                --
# --  https://github.com/Naegolus/vised                                      --
# --                                                                         --
# --  Author(s):                                                             --
# --      - Helmut, redrocket@gmx.at                                         --
# --                                                                         --
# -----------------------------------------------------------------------------
# --                                                                         --
# --  Copyright (C) 2015 Authors                                             --
# --                                                                         --
# --  This program is free software: you can redistribute it and/or modify   --
# --  it under the terms of the GNU General Public License as published by   --
# --  the Free Software Foundation, either version 3 of the License, or      --
# --  (at your option) any later version.                                    --
# --                                                                         --
# --  This program is distributed in the hope that it will be useful,        --
# --  but WITHOUT ANY WARRANTY; without even the implied warranty of         --
# --  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the           --
# --  GNU General Public License for more details.                           --
# --                                                                         --
# --  You should have received a copy of the GNU General Public License      --
# --  along with this program. If not, see <http://www.gnu.org/licenses/>.   --
# --                                                                         --
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------

all: logo_trac.pdf logo_shirt_back.pdf logo_shirt_front.pdf

logo_trac.pdf: logo_trac.tex
	pdflatex --shell-escape logo_trac.tex
	pdfcrop logo_trac.pdf logo_trac.pdf
	convert logo_trac.pdf logo_trac.png

logo_shirt_back.pdf: logo_shirt_back.tex
	pdflatex --shell-escape logo_shirt_back.tex
	pdfcrop logo_shirt_back.pdf logo_shirt_back.pdf
	#convert -negate logo_shirt_back.pdf logo_shirt_back.pdf

logo_shirt_front.pdf: logo_shirt_front.tex
	pdflatex --shell-escape logo_shirt_front.tex
	pdfcrop logo_shirt_front.pdf logo_shirt_front.pdf

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

