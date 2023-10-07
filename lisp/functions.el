(require 'cc-mode)
;;;start-time-eveluate 测量emacs启动时间
(add-hook 'emacs-startup-hook
    (lambda ()
        (message "Emacs ready in %s with %d garbage collections."
            (format "%.2f seconds"
                (float-time
                    (time-subtract after-init-time before-init-time)))
        gcs-done)))
;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (dired "~/.emacs.d/"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f3>") 'open-init-file)
(defun load-config()
  (interactive)
  (eval-buffer)
  (load-file "~/.emacs.d/init.el"))
(global-set-key (kbd "C-x <f3>") 'load-config)

;(defun compile-and-run-cpp()
;    (interactive)
;  (compile (format "g++ %s && ./a.out" (buffer-file-name))))
;(define-key c++-mode-map (kbd "<f5>") #'compile-and-run-cpp)
(provide 'functions)
