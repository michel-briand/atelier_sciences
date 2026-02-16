TOP ?= $(PWD)

default: all

DEFAULT_LANGUAGE=fr

# Documents (article)
D_ORG=$(wildcard *.org)

%.pdf: %.org
	$(org_article_to_pdf)
%.html: %.org
	$(org_article_to_html)

include $(TOP)/.make/Makefile.inc
