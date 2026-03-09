
;; <<< Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

(require 'evil)
(evil-mode 1)
;; >>> Evil

(provide 'packages)
