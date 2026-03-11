;;; init.el --- Core configuration -*- lexical-binding: t; -*-

(defvar lisp-search-dir (expand-file-name "lisp" user-emacs-directory))
(unless (file-exists-p lisp-search-dir)
  (make-directory lisp-search-dir))

(add-to-list 'load-path lisp-search-dir)

;; Always load repository.el first
(require 'repository)
(require 'macos-config)
;; Other packages
(require 'packages)
(require 'eglot-config)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
