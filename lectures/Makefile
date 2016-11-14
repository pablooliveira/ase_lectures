SRCS = $(wildcard *.md)
ALL_PDF = $(patsubst %.md,%.pdf,$(SRCS))

all: pdf

pdf: $(ALL_PDF)

C4.pdf: C4.md
	pandoc --include-in-header header.tex -t beamer -f markdown $< -o C4.tex
	latex C4.tex
	dvips C4.dvi
	ps2pdf C4.ps

C3.pdf: C3.md 
	pandoc --variable fontsize=9pt -t beamer -f markdown $< -o $@

C1.pdf: C1.md
	pandoc -s -t beamer -f markdown $< -o C1.tex
	pdflatex C1.tex


%.pdf: %.md
	pandoc --latex-engine=/usr/bin/xelatex  -f markdown $< -o $@


clean:
	rm -f $(ALL_PDF) *.snm *.toc *.out *.nav *.aux *.log *.ps *.dvi
