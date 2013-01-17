SRCS = $(wildcard *.md)
ALL_HTML = $(patsubst %.md,%.html,$(SRCS))
ALL_PDF = $(patsubst %.md,%.pdf,$(SRCS))

all: html pdf

html: $(ALL_HTML)
pdf: $(ALL_PDF)

%.html: %.md
	pandoc -s --mathjax -f markdown $< -o $@
%.pdf: %.md
	pandoc -f markdown $< -o $@

clean:
	rm -f $(ALL_HTML) $(ALL_PDF)
