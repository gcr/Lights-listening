LILYPOND = /usr/bin/lilypond

all: *.pdf

%.ps : *.ly
	$(LILYPOND) --ps $*.ly

%.pdf : *.ly
	$(LILYPOND) --pdf $*.ly

clean:
	-rm *.pdf *.ps *.mid
