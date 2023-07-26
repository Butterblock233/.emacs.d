(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(setq custom-file (expand-file-name "~/.emacs.d/lisp/custom.el"))
(load custom-file 'no-error 'no-message)
(load-theme 'atom-one-dark t)
(require 'start-time-eveluate)
(require 'basic)
(require 'keymaps)
(require 'mirrorlist)
(require 'packages)
(provide 'init)


;;;你说的对，但“原神”是一款由
