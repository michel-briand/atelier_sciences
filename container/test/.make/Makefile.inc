# -*- mode: makefile-gmake; -*-

d_org_to_pdf=$(D_ORG_TO_PDF) $(D_ORG_TO_ALL)
d_org_to_html=$(D_ORG_TO_HTML) $(D_ORG_TO_ALL)

d_org_to_beamer_pdf=
d_org_to_beamer_html=

# Fabrication du LaTeX à partir du Org
d_tex := $(if $(d_tex),$(d_tex),$(patsubst %.org,%.tex,$(d_org_to_pdf)))
# Fabrication du PDF à partir du LaTeX
D_PDF := $(if $(D_PDF),$(D_PDF),$(patsubst %.tex,%.pdf,$(d_tex)))
# Fabrication du HTML à partir du Org
D_HTM := $(if $(D_HTM),$(D_HTM),$(patsubst %.org,%.html,$(d_org_to_html)))

# Fabrication du LaTeX Beamer à partir du Org
b_tex := $(if $(b_tex),$(b_tex),$(patsubst %.org,%.tex,$(B_ORG)))
# Fabrication du PDF à partir du LaTeX Beamer
B_PDF := $(if $(B_PDF),$(B_PDF),$(patsubst %.tex,%.pdf,$(b_tex)))

# Afficher les cibles
printtex:
	@echo $(b_tex) $(d_tex)
print:
	@echo $(D_PDF) $(D_HTM) $(B_PDF)

define org_article_to_pdf
	emacs --batch \
		-l .emacs.d/org-mode_batch_init.el \
		-l .emacs.d/org-mode_ansible-listings.el \
		--visit $< \
		-f org-latex-export-to-pdf
endef

define org_article_to_html
	emacs --batch \
		-l .emacs.d/org-mode_batch_init.el \
		-l .emacs.d/org-mode_ansible-listings.el \
		--visit $< \
		-f org-html-export-to-html
endef

define org_beamer_to_pdf
	emacs --batch \
		-l .emacs.d/org-mode_batch_init.el \
		-l .emacs.d/org-mode_ansible-listings.el \
		--visit $< \
		-f org-beamer-export-to-pdf
endef

all: $(D_PDF) $(D_HTM) $(B_PDF)

clean:
	-rm -f *~ $(d_tex) $(D_PDF) $(D_HTM) $(b_tex) $(B_PDF)

rclean:
	-rm -f *~ *.vrb *.aux *.log *.nav *.out *.snm *.tex *.toc *.fls *.fdb_latexmk
