xml2rfc ?= xml2rfc -v
kramdown-rfc2629 ?= kramdown-rfc2629
idnits ?= idnits

all:  draft-westerlund-perc-rtp-field-considerations.txt draft-westerlund-perc-rtp-field-considerations.html

clean:
	-rm -f draft-westerlund-perc-rtp-field-considerations.txt draft-westerlund-perc-rtp-field-considerations.html 

%.xml: %.md
	$(kramdown-rfc2629) $< > $@

%.txt: %.xml
	$(xml2rfc) $< --text --out $@

%.html: %.xml
	$(xml2rfc) $< --html --out $@

