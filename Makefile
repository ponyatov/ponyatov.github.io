-include pages.mk

no:

.PHONY: site
site: $(PAGES)

WH =  python wiki2html.py < $< > $@
index.html: wiki/Home.mediawiki wiki2html.py
	$(WH)
%.html: wiki/%.mediawiki wiki2html.py
	$(WH)
