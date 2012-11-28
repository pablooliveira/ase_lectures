SRCS = $(wildcard *.md)
ALL_HTML = $(patsubst %.md,%.html,$(SRCS))

html: $(ALL_HTML)

%.html: %.md
	/home/users/poliveira/.cabal/bin/pandoc -s --mathjax -f markdown $< -o $@
%.pdf: %.md
	/home/users/poliveira/.cabal/bin/pandoc -f markdown $< -o $@

clean:
	rm $(ALL_HTML)
