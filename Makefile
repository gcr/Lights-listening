# Make a file
#
# You can make all the individual .PDF files by running:
# 	make all-songs
# or you can make the final The_Listening.pdf with 300 dots per inch by running:
# 	make final DPI=300
# or you can get everything by running:
# 	make
# The choice is yours. Choose wisely.


export DPI = 90
export INKSCAPE = /usr/local/bin/inkscape
export LILYPOND = /usr/bin/lilypond
export GHOSTSCRIPT = /usr/bin/gs
export SONGS = \
	03-river\
   	13-pretend

# .PHONY means this target isn't associated with a real actual file.
.PHONY: all
all: all-songs covers The_Listening.pdf

# This file is the FINAL version.
.PHONY: final
final: export DPI = 300
final: The_Listening.pdf

The_Listening.pdf : covers book.ps
	$(GHOSTSCRIPT) -dSAFER -dBATCH -dNOPAUSE -dPDFSETTINGS=/prepress -sDEVICE=pdfwrite -sOutputFile=The_Listening.pdf covers/cover-front-$(DPI).ps book.ps

# Make the high quality front and back covers
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

# Remove the unneeded files. Useful for git, etc.
.PHONY: clean
clean:
	-rm The_Listening.pdf
	-make -C covers clean
	-for dir in $(SONGS); do make -C $$dir clean; done
