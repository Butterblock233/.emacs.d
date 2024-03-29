(require 'load-path)
(eval-when-compile
  (require 'use-package))

(use-package counsel
  :defer t
  :ensure t)

(use-package amx
  :ensure t
  :defer (amx-mode))

(use-package ace-window
  :ensure t
  :defer t
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
  (setq evil-undo-system 'undo-redo)
  :bind(
     :map evil-normal-state-map(
	  ("C-u" . ' evil-scroll-up)
	  )
     :map evil-insert-state-map(
	("C-h" . 'left-char)
	("C-j" . 'next-line)
	("C-k" . 'previous-line)
	("C-l" . 'right-char)
	("C-v" . 'yank))))
(use-package which-key
  :ensure t
  :defer (which-key-mode))


(use-package evil-tutor-sc
  :ensure t
  :defer t
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
  :defer t
  :after (treemacs projectile))


(use-package rainbow-delimiters
  :ensure t
  :defer t
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
		  (projects . 10)))) ;; 显示多少个最近项目

;(require 'yasnippet)


(use-package yasnippet
  :ensure t
  :init
  (yas-global-mode 1)
  )

;;================lsp-bridge================
;(require 'lsp-bridge)
;(global-lsp-bridge-mode)
;(define-key lsp-bridge-mode-map (kbd "C-n") 'acm-select-next)
;(define-key acm-mode-map (kbd "C-p") 'acm-select-prev)
;(use-package lsp-bridge
;  :load-path "~/.emacs.d/lisp/lsp-bridge"
;  (require 'lsp-bridge)
;  :commands(global-lsp-bridge-mode)
;  :init
;  (global-lsp-bridge-mode)
;  :bind
;  (:map acm-mode-map
;		("C-n" .'acm-select-next)
;		("C-p" . 'acm-select-prev)))
;;=========================================
(use-package eglot
  :ensure
  ;:hook prog-mode . (eglot)
)

(use-package company
  :bind (:map company-active-map
	      ("C-n" . 'company-select-next)
	      ("C-p" . 'company-select-previous)
          ("C-SPC" . 'company-complete)
		  ("<Tab>" . 'company-complete-selection))
  :init
  (global-company-mode t)
  ;(add-hook 'after-init-hook 'company-tng-mode)

  :config
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0))

(use-package magit
:ensure t
:defer t
)

(use-package quickrun
  :ensure t
  :defer t
  :bind
  (:map quickrun--mode-map
	("q" . "C-x 0")))
;(use-package realgud
;  :defer t
;   :ensure t)
(use-package dape
  :ensure t
  :defer 5)
(use-package ligature
  :ensure t
  :load-path "path-to-ligature-repo"
  :config
  ;; Enable all JetBrains Mono ligatures in programming modes
  (ligature-set-ligatures 'prog-mode '("-|" "-~" "---" "-<<" "-<" "--" "->" "->>" "-->" "///" "/=" "/=="
                                      "/>" "//" "/*" "*>" "***" "*/" "<-" "<<-" "<=>" "<=" "<|" "<||"
                                      "<|||" "<|>" "<:" "<>" "<-<" "<<<" "<==" "<<=" "<=<" "<==>" "<-|"
                                      "<<" "<~>" "<=|" "<~~" "<~" "<$>" "<$" "<+>" "<+" "</>" "</" "<*"
                                      "<*>" "<->" "<!--" ":>" ":<" ":::" "::" ":?" ":?>" ":=" "::=" "=>>"
                                      "==>" "=/=" "=!=" "=>" "===" "=:=" "==" "!==" "!!" "!=" ">]" ">:"
                                      ">>-" ">>=" ">=>" ">>>" ">-" ">=" "&&&" "&&" "|||>" "||>" "|>" "|]"
                                      "|}" "|=>" "|->" "|=" "||-" "|-" "||=" "||" ".." ".?" ".=" ".-" "..<"
                                      "..." "+++" "+>" "++" "[||]" "[<" "[|" "{|" "??" "?." "?=" "?:" "##"
                                      "###" "####" "#[" "#{" "#=" "#!" "#:" "#_(" "#_" "#?" "#(" ";;" "_|_"
                                      "__" "~~" "~~>" "~>" "~-" "~@" "$>" "^=" "]#" "--"))
  ;; Enables ligature checks globally in all buffers. You can also do it
  ;; per mode with `ligature-mode'.
  (global-ligature-mode t))

(use-package esup
  :defer t)
 
(provide 'packages)
