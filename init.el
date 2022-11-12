
;; Configure Babel to support all languages included in the manuscript
(org-babel-do-load-languages
 'org-babel-load-languages
 '((dot        . t)
   (emacs-lisp . t)
   (org        . t)
   (python     . t)))

(setq org-confirm-babel-evaluate nil)

;; don't use the full set of Org-mode latex packages
;(setq org-export-latex-default-packages-alist nil)
