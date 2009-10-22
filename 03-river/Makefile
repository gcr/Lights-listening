LILYPOND = /usr/bin/lilypond

all: river.pdf

%.ps : %.ly
	$(LILYPOND) --ps $<

%.pdf : %.ly
	$(LILYPOND) --pdf $<
