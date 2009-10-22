DPI = 25
INKSCAPE = /usr/local/bin/inkscape
CONVERT = /usr/bin/convert

all: cover-front.ps

%.ps: %.png
	$(CONVERT) $*.png $*.ps

%.png: %.svg
	$(INKSCAPE) --export-png=$*.png --export-dpi=$(DPI) $*.svg --export-area-page

clean:
	-rm cover-*.png cover-*.ps
