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
  (("C-x C-s" . 'swiper)
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
  :init
  (evil-mode)
  :config
  (setq evil-undo-system 'undo-redo))


(use-package which-key
  :ensure t
  :defer (which-key-mode))


(use-package evil-tutor-sc
  :ensure t
  )


(use-package treemacs
  :ensure t
  :defer t
  :config
  (treemacs-tag-follow-mode)
  :bind
  (:map global-map
        ("M-0"       . treemacs-select-window)
        ("C-x t 1"   . treemacs-delete-other-windows)
        ("C-x t t"   . treemacs)
        ("C-x t B"   . treemacs-bookmark)
        ;; ("C-x t C-t" . treemacs-find-file)
        ("C-x t M-t" . treemacs-find-tag))
  (:map treemacs-mode-map
	("/" . treemacs-advanced-helpful-hydra)))

(use-package treemacs-projectile
  :ensure t
  :after (treemacs projectile))


(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))
(use-package dashboard
 :ensure t
 ;:bind 
 ;(:map dashboard-mode-map
 ;      ("r" dashboard-jump-to-previous))
 :config
 ;(setq dashboard-banner-logo-title "Emacs\nEdit improved") ;; 个性签名，随读者喜好设置
 ;; (setq dashboard-projects-backend 'projectile) ;; 读者可以暂时注释掉这一行，等安装了 projectile 后再使用
 ;(setq dashboard-startup-banner 'official) ;; 也可以自定义图片
 (setq dashboard-items '((recents  . 5)   ;; 显示多少个最近文件
		  (bookmarks . 5)  ;; 显示多少个最近书签
		  (projects . 10))) ;; 显示多少个最近项目
 (dashboard-setup-startup-hook))

;;================lsp-bridge================
(add-to-list 'load-path "~/.emacs.d/lisp/lsp-bridge")

(require 'yasnippet)
(yas-global-mode 1)

(require 'lsp-bridge)
(global-lsp-bridge-mode)

;;=========================================
;;(use-package eglot
;;  :ensure t
;;  :hook prog-mode-hook . 'eglot-ensure
;;)

;;(use-package company
;;  :bind (:map company-active-map
;;	      ("C-n" . 'company-select-next)
;;	      ("C-p" . 'company-select-previous))
;;  :init
;;  (global-company-mode t)
;;  (add-hook 'after-init-hook 'company-tng-mode)
;;  :config
;;  (setq company-minimum-prefix-length 1)
;;  (setq company-idle-delay 0))

(use-package magit
:ensure t
)

(use-package quickrun
  :ensure t
  :defer t
  :bind
  (:map quickrun--mode-map
	("q" . "C-x 0")))
(use-package realgud
  :ensure t)
(use-package yasnippet
  :ensure t
  )
  (provide 'packages)
