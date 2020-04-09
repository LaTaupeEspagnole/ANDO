all: ANDO

ANDO: ANDO.pdf

%.pdf: %.tex
	pdflatex -synctex=1 -interaction=nonstopmode $< || pdflatex -synctex=1 -interaction=nonstopmode $<

clean:
	${RM} ANDO.pdf ANDO.aux ANDO.log ANDO.out ANDO.synctex.gz ANDO.toc texput.log
