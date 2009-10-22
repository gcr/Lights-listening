# gs -dSAFER -dBATCH -dNOPAUSE -dPDFSETTINGS=/prepress -sDEVICE=pdfwrite -sOutputFile=output.pdf covers/cover-front.ps 13-pretend/pretend.ps
# ~/ink/bin/inkscape --export-eps=cover-front.eps --export-dpi=50 covers.svg --export-area-page
# lilypond --ps book.ps book.ly

export DPI = 30
export INKSCAPE = /usr/local/bin/inkscape
export LILYPOND = /usr/bin/lilypond
export GHOSTSCRIPT = /usr/bin/gs
export SONGS = \
	03-river\
   	13-pretend


all: all-songs covers The_Listening.pdf

The_Listening.pdf : covers book.ps
	$(GHOSTSCRIPT) -dSAFER -dBATCH -dNOPAUSE -dPDFSETTINGS=/prepress -sDEVICE=pdfwrite -sOutputFile=The_Listening.pdf covers/cover-front.ps 13-pretend/pretend.ps

.PHONY: covers
covers:
	$(MAKE) -e -C covers

%.pdf : %.ly
	$(LILYPOND) --pdf $<

%.ps : %.ly
	$(LILYPOND) --ps $<

# Allow making all the individual songs at once

.PHONY: all-songs $(SONGS)
all-songs: $(SONGS)
$(SONGS):
	$(MAKE) -e -C $@

.PHONY: clean
clean:
	-rm The_Listening.pdf
	-make -C covers clean
	-for dir in $(SONGS); do make -C $$dir clean; done
