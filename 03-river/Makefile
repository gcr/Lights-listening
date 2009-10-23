LILYPOND = /usr/bin/lilypond

all: river-for-piano.pdf

%.ps : %.ly
	$(LILYPOND) --ps $<

%.pdf : %.ly
	$(LILYPOND) --pdf $<

clean:
	-rm *.pdf *.ps *.mid
