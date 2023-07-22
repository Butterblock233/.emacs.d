(eval-when-compile
  (require 'use-package))

(use-package counsel
  :ensure t)

(use-package amx
  :ensure t
  :defer (amx-mode))

(use-package ace-window
  :ensure t
  :bind (("C-x o" . 'ace-window)))

(use-package mwim
  :ensure t
  :bind
  ("C-a" . mwim-beginning-of-code-or-line)
  ("C-e" . mwim-end-of-code-or-line))

;(use-package good-scroll
  ;:ensure t
  ;:if window-system          ; 在图形化界面时才使用这个插件
  ;:init (good-scroll-mode))


;;;通过use-package实现emacs的autoload
;(use-package package-name
  ;:commands
  ;(global-company-mode)
  ;:defer t
  ;)


 
(use-package ivy
  :ensure t
  :init
  (ivy-mode 1)
  (counsel-mode 1)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq search-default-mode #'char-fold-to-regexp)
  (setq ivy-count-format "(%d/%d) ")
  :bind
  (("C-s" . 'swiper)
   ("C-x b" . 'ivy-switch-buffer)
   ("C-c v" . 'ivy-push-view)
   ("C-c s" . 'ivy-switch-view)
   ("C-c V" . 'ivy-pop-view)
   ("C-x C-@" . 'counsel-mark-ring); 在某些终端上 C-x C-SPC 会被映射为 C-x C-@，比如在 macOS 上，所以要手动设置
   ("C-x C-SPC" . 'counsel-mark-ring)
   :map minibuffer-local-map
   ("C-r" . counsel-minibuffer-history)))(use-package ivy
  :ensure t)

(use-package evil
  :ensure t
  :init (evil-mode))


(use-package which-key
  :ensure t
  :defer (which-key-mode))

(use-package company
  :bind (:map company-active-map
	      ("C-n" . 'company-select-next)
	      ("C-p" . 'company-select-previous))
  :init
  (global-company-mode t)
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0))


(provide 'packages)