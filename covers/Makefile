DPI = 25
INKSCAPE = /usr/local/bin/inkscape
CONVERT = /usr/bin/convert

# Rules to make cover-front-25.ps from cover-front.svg
#
all: cover-front-$(DPI).ps

%.ps: %.png
	$(CONVERT) $*.png $*.ps

# This rule says that cover-front-250.png should be built from cover-front.svg
%-$(DPI).png: %.svg
	$(INKSCAPE) --export-png=$@ --export-dpi=$(DPI) $< --export-area-page

clean:
	-rm cover-*.png cover-*.ps
