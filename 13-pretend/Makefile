LILYPOND = /usr/bin/lilypond

all: pretend-for-piano.pdf

%.ps : %.ly
	$(LILYPOND) --ps $<

%.pdf : %.ly
	$(LILYPOND) --pdf $<

clean:
	-rm *.pdf *.ps *.mid
