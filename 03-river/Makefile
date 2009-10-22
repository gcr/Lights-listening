LILYPOND = /usr/bin/lilypond

all: river.pdf river.ps

%.ps : %.ly
	$(LILYPOND) --ps $<

%.pdf : %.ly
	$(LILYPOND) --pdf $<

clean:
	-rm *.pdf *.ps *.mid
