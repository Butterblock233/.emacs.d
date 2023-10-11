(add-to-list 'load-path "~/.emacs.d/lisp/lsp-bridge")
(setq custom-file "~/.emacs.d/lisp/custom.el")
(load custom-file)

;====================Straight.el====================
;(defvar bootstrap-version)
;(let ((bootstrap-file
;       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
;      (bootstrap-version 6))
;  (unless (file-exists-p bootstrap-file)
;    (with-current-buffer
;        (url-retrieve-synchronously
;         "https://radian-software.github.io/straight.el/install.el"
;         'silent 'inhibit-cookies)
;      (goto-char (point-max))
;      (eval-print-last-sexp)))
;  (load bootstrap-file nil 'nomessage))
;===================================================
(provide 'load-path)
