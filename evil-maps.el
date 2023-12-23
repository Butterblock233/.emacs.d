;(setq evil-overriding-maps 0)
;;Control+方向键在输入模式下快速移动光标
(define-key evil-insert-state-map (kbd "C-h") (kbd "C-b"))
(define-key evil-insert-state-map (kbd "C-l") (kbd "C-f"))
(define-key evil-insert-state-map (kbd "C-k") 'evil-previous-line)
(define-key evil-insert-state-map (kbd "C-j") 'evil-next-line)
(define-key evil-insert-state-map (kbd "C-c") 'evil-copy-region-as-kill) ;复制
(define-key evil-insert-state-map (kbd "C-v") 'yank)   ;粘贴
(provide 'emacs-maps)
