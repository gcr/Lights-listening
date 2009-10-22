# gs -dSAFER -dBATCH -dNOPAUSE -dPDFSETTINGS=/prepress -sDEVICE=pdfwrite -sOutputFile=output.pdf Cover/cover-front.ps 13-pretend/pretend.ps
# ~/ink/bin/inkscape --export-eps=cover-front.eps --export-dpi=50 Cover.svg --export-area-page
# lilypond --ps book.ps book.ly

export DPI = 30
export INKSCAPE = /usr/local/bin/inkscape
export LILYPOND = /usr/bin/lilypond
export GHOSTSCRIPT = /usr/bin/gs
export SONGS = 03 13


all: covers individ-songs

The_Listening.pdf : covers
	$(GHOSTSCRIPT) -dSAFER -dBATCH -dNOPAUSE -dPDFSETTINGS=/prepress -sDEVICE=pdfwrite -sOutputFile=The_Listening.pdf Cover/cover-front.ps 13-pretend/pretend.ps

covers:
	$(MAKE) -e -C Cover

%.ps : %.ly
	$(LILYPOND) --ps $<

# Allow making all the individual songs at once
individ-songs: $(SONGS)
$(SONGS):
	$(MAKE) -e -C $@-*

clean:
	-rm The_Listening.pdf
	make -C Cover clean
	-rm *-*/*.pdf *-*/*.ps
