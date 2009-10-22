LILYPOND = /usr/bin/lilypond

all: pretend.pdf pretend.ps

%.ps : %.ly
	$(LILYPOND) --ps $<

%.pdf : %.ly
	$(LILYPOND) --pdf $<

clean:
	-rm *.pdf *.ps *.mid
