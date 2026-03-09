;;; macos-config.el --- Macos env configuration -*- lexical-binding: t; -*-

(when (memq window-system '(mac ns x))
  (unless (package-installed-p 'exec-path-from-shell)
    (package-install 'exec-path-from-shell))
  (exec-path-from-shell-initialize))

(provide 'macos-config)
