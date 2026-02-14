;; Exporter les blocs de code avec colorisation syntaxique

;; export LaTeX
(add-to-list 'org-latex-packages-alist '("AUTO" "babel"))
;;(setq org-latex-listings 'listings)
(setq org-latex-listings 'engraved)
;;(setq org-latex-src-block-backend 'engraved)
;;crash (setq org-latex-engraved-theme 't)

;; export HTML
(setq org-html-head-include-default-style nil) ;; pas de style par défaut inclus
(setq org-html-head-extra "<link rel=\"stylesheet\" type=\"text/css\" href=\"org.css\"/>") ;; le fichier org.css accompagne le fichier .org
;; on peut aussi ajouter
;; <link rel=\"stylesheet\" type=\"text/css\" href=\"org-htmlize.css\"/>
;; mais pour l'instant c'est un CSS à moitié fini...

(setq org-html-htmlize-output-type 'css)

;; TODO:
;; # excellent truc mais pas pour l'instant : #+INFOJS_OPT: view:info toc:nil
