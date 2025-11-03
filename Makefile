default: all

DEFAULT_LANGUAGE=fr

# Documents (article)
D_ORG= #$(wildcard *.org)
D_ORG_TO_ALL=README.org
D_ORG_TO_HTML=essai_doc_html.org

# Presentations (beamer)
B_ORG=essai_beamer.org

%.pdf: %.org
	$(org_article_to_pdf)
%.html: %.org
	$(org_article_to_html)

include .make/Makefile.inc
