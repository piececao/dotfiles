;;; repository.el --- Repository configuration -*- lexical-binding: t; -*-
;; Set elpa mirrors and configure use-package

(require 'package)
;; Set USTC Mirror for faster downloads
(setq package-archives '(("gnu"    . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("nongnu" . "https://mirrors.ustc.edu.cn/elpa/nongnu/")
                         ("melpa"  . "https://mirrors.ustc.edu.cn/elpa/melpa/")))

;; Initialize the package system
(package-initialize)

;; Refresh contents if no local cache exists
(unless package-archive-contents
  (package-refresh-contents))

(provide 'repository)
