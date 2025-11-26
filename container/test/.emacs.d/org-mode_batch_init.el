(package-initialize)
(require 'ox-beamer)
(setq org-latex-compiler "xelatex")
;  '("xelatex -interaction nonstopmode %f"
;    "xelatex -interaction nonstopmode %f")) ;; for multiple passes

(setq org-latex-pdf-process '("latexmk -f -pdf -%latex -interaction=nonstopmode -output-directory=%o %f"))
(setq org-beamer-outline-frame-title "Plan")
(setq org-src-preserve-indentation t)
(setq org-latex-compiler "xelatex")
;; `hyperref' package setup
(setq org-latex-hyperref-template
      (concat "\\hypersetup{\n"
              "pdfauthor={%a},\n"
              "pdftitle={%t},\n"
              "pdfkeywords={%k},\n"
              "pdfsubject={%d},\n"
              "pdfcreator={%c},\n"
              "pdflang={%L},\n"
              ;; Get rid of the red boxes drawn around the links
              "colorlinks,\n"
              "citecolor=black,\n"
              "filecolor=black,\n"
              "linkcolor=blue,\n"
              "urlcolor=blue\n"
              "}"))
(setq org-html-postamble t)
(setq org-html-postamble-format
      '(
       ("en" "<p class=\"author\">Author: %a</p>
<p class=\"date\">Date: %d</p>")
       ("fr" "<p class=\"author\">Auteur : %a</p>
<p class=\"date\">Date : %d</p>")
       ))
