DPI = 25
INKSCAPE = /usr/local/bin/inkscape
CONVERT = /usr/bin/convert

# Rules to make cover-front-25.ps from cover-front.svg
#
all: cover-front-$(DPI).ps

%.ps: %.png
	$(CONVERT) $*.png $*.ps

%.png: *.svg
	$(INKSCAPE) --export-png=$(*).png --export-dpi=$(DPI) $(*:-$(DPI)=).svg --export-area-page

clean:
	-rm cover-*.png cover-*.ps
