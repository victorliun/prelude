;;; Personal -- Personal key bindings

;;; Commentary:
;; Customisations

;;; code:

;; Disable scroll barf-if-buffer-read-only
(scroll-bar-mode -1)

;; Disable beep
(setq ring-bell-function 'ignore)
(load-theme 'solarized-dark)

(provide 'personal)
;;; personal.el ends here
