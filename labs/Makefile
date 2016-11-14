SRCS = $(wildcard *.md)
ALL_HTML = $(patsubst %.md,%.html,$(SRCS))
ALL_PDF = $(patsubst %.md,%.pdf,$(SRCS))

all: html pdf

html: $(ALL_HTML)
pdf: $(ALL_PDF)

%.html: %.md
	pandoc -s --mathjax -c pandoc.css --toc -f markdown $< -o $@
%.tex: %.md
	pandoc -S -s --latex-engine=/usr/bin/xelatex  -f markdown $< -o $@
%.pdf: %.md
	pandoc --latex-engine=/usr/bin/xelatex  -f markdown $< -o $@

clean:
	rm -f $(ALL_HTML) $(ALL_PDF)
