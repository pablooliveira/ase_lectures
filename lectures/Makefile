SRCS = $(wildcard *.md)
ALL_PDF = $(patsubst %.md,%.pdf,$(SRCS))

all: pdf

pdf: $(ALL_PDF)

%.pdf: %.md
	pandoc -t beamer -f markdown $< -o $@

%.tex: %.md
	pandoc -s -t beamer -f markdown $< -o $@



clean:
	rm -f $(ALL_PDF) *.snm *.toc *.out *.nav *.aux *.log
