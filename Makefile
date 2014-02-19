
SRC = lib/lunr.fr.js \
	lib/stopWordFilter.js \
	lib/stemmer.js \

YEAR = $(shell date +%Y)
VERSION = $(shell cat VERSION)

all: lunr.fr.js lunr.fr.min.js

lunr.fr.js: $(SRC)
	cat $^ | \
	sed "s/@YEAR/${YEAR}/" | \
	sed "s/@VERSION/${VERSION}/" > $@

lunr.fr.min.js: lunr.fr.js
	uglifyjs --compress --mangle --comments < $< > $@

clean:
	rm -f lunr.fr{.min,}.js

.PHONY: test clean docs
