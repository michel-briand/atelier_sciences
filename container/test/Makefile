default: all

# Documents (article)
D_ORG_TO_ALL=essai_simple_doc.org

# Presentations (beamer)
B_ORG=essai_beamer.org

essai_simple_doc.pdf: essai_simple_doc.org
	$(org_article_to_pdf)
essai_simple_doc.html: essai_simple_doc.org
	$(org_article_to_html)
essai_beamer.pdf: essai_beamer.org
	$(org_beamer_to_pdf)

include .make/Makefile.inc
