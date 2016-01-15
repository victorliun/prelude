;;; Personal -- Personal key bindings

;;; Commentary:
;; Customisations

;;; code:

;; Disable scroll barf-if-buffer-read-only
(scroll-bar-mode -1)

;; Disable beep
(setq ring-bell-function 'ignore)
(load-theme 'solarized-dark)


(add-hook 'python-mode-hook (lambda () 
                              (flyspell-prog-mode)
                              (linum-mode t)
                              (smartparens-mode t)
                              (whitespace-mode t)
                              )
          )

(provide 'personal)
;;; personal.el ends here
