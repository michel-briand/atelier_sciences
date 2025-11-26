; Package minted Error: You must have `pygmentize' installed to use this package.

;; (add-to-list 'org-latex-packages-alist
             ;; '("" "minted" t ("pdflatex" "xelatex" "lualatex")))

; apt install python3-pygments python3-ansible-pygments

(setq org-latex-listings 'minted
      org-latex-packages-alist '(("" "minted"))
      org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
