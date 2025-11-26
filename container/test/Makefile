default: all

# Documents (article)
D_ORG=$(wildcard *.org)

# Presentations (beamer)
B_ORG=

%.pdf: %.org
	$(org_article_to_pdf)
%.html: %.org
	$(org_article_to_html)

include .make/Makefile.inc
