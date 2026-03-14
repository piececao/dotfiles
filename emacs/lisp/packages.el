(defun ensure-package (package)
  "Install PACKAGE if it is not already installed."
  (unless (package-installed-p package)
    (unless package--initialized
      (package-initialize))
    (unless (assoc package package-archive-contents)
      (package-refresh-contents))
    (package-install package)))

;; <<< Evil
(ensure-package 'evil)
(require 'evil)
(setq evil-default-state 'emacs)
(evil-mode 1)
;; >>> Evil

;; <<< Company
(ensure-package 'company)
(global-company-mode 1)

(with-eval-after-load 'company
  (setq company-idle-delay 0.0
	company-minimum-prefix-length 2
	company-tooltip-align-annotations t)

  (define-key company-active-map (kbd "ESC") 'company-abort)
  (define-key company-active-map [escape] 'company-abort)

  (add-hook 'eglot-managed-mode-hook (lambda ()
				       (setq-local company-backends '(company-capf))))
  )

;; >>> Company

(provide 'packages)
