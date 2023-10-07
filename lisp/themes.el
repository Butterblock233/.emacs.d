;(use-package doom-themes
;  :ensure t
;  :config
;  ;; Global settings (defaults)
;  (setq doom-themes-enable-bold nil    ; if nil, bold is universally disabled
;	doom-themes-enable-italic t) ; if nil, italics is universally disabled
;  (load-theme 'doom-monokai-octagon t)
;  (doom-themes-treemacs-config))

;(use-package all-the-icons
;  :if (display-graphic-p))
(load-theme 'atom-one-dark)
(use-package smart-mode-line-atom-one-dark-theme
  :ensure t)

;; smart-mode-line
(use-package smart-mode-line
  :config
  (setq rm-blacklist
    (format "^ \\(%s\\)$"
      (mapconcat #'identity
        '("Projectile.*" "LSPB" "hs" "eldoc" "company.*" "Google"
	  "Undo-Tree" "counsel" "ivy" "yas" "WK")
         "\\|")))
  (setq sml/theme 'atom-one-dark)
  (sml/setup))
(provide 'themes)
