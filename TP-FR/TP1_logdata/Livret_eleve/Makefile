filename = TP1_logdata_eleve
variable = $(filename).tex

all: pdflatex

pdflatex : $(variable)
	pdflatex $(variable)
	pdflatex $(variable)
	pdflatex $(variable)


dvi : $(variable)
	latex $(variable)
	latex $(variable)
	latex $(variable)


pdf : dvi
	dvips $(filename).dvi
	ps2pdf $(filename).ps


clean :
	rm $(filename).aux $(filename).pdf $(filename).glo $(filename).gls $(filename).bbl $(filename).log $(filename).blg $(filename).dvi $(filename).out

show: pdflatex
	evince $(filename).pdf
