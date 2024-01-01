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
;(load-theme 'atom-one-dark)
(use-package atom-one-dark-theme
  :ensure t
  :init ( load-theme 'atom-one-dark t))
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))
(use-package vscode-icon
  :ensure t
  :commands (vscode-icon-for-file));--------------------holo-layer--------------------
;(add-to-list 'load-path "~/.emacs.d/lisp/holo-layer")
;(require 'holo-layer)
;(holo-layer-enable)
;(setq 'holo-layer-enable-cursor-animation 1)
;(setq 'holo-layer-enable-cursor-animation t)
(provide 'themes)
