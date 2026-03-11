(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
	       '(c-mode . ("clangd"))
	       )
  )

(provide 'eglot-config)
