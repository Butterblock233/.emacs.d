(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(require 'package)
(setq package-archives '(("gnu" . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("nongnu" . "https://mirrors.ustc.edu.cn/elpa/nongnu/")))


(provide 'mirrorlist)