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

(add-to-list 'load-path "./vendor/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(Provide 'personal)
;;; personal.el ends here
