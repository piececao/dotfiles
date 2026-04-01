;; Add word wrap
(add-hook 'org-mode-hook
          (lambda ()
            (setq truncate-lines nil)))

(setq inhibit-splash-screen t)

(provide 'appearance)
