;;; package --- Summary
;;; Commentary:
;;; Code:

(prelude-require-packages
 '(
   ace-jump-mode
   ag
   auto-complete
   buffer-move
   color-theme
   elpy
   emamux
   emmet-mode
   fiplr
   flx
   flx-ido
   hackernews
   helm
   helm-mt
   ido-vertical-mode
   linum-relative
   multiple-cursors
   popwin
   prodigy
   visual-regexp
   )
 )

;; elpy config
(elpy-enable)

;; popwin config
(require 'popwin)
(popwin-mode 1)
(push '("*helm M-x*" :height 20) popwin:special-display-config)
(push '("*helm mini*" :height 20) popwin:special-display-config)
(push '("*Helm Find Files*" :height 20) popwin:special-display-config)

;; display relative line number
(require 'linum-relative)
(global-linum-mode 1)
(smartparens-global-mode 1)
(linum-relative-on)

;; auto-completion
(require 'auto-complete)

;; fiplr
(setq fiplr-root-markers '(".git" ".svn"))
(setq fiplr-ignored-globs
      '((directories (".git" ".svn" "build" "vendor" "node_modules" "non-git" "__pycache__" "env" "venv"))
        (files ("*.jpg" "*.png" "*.zip" "*~" "*.pyc")))
      )
(global-set-key (kbd "C-x f") 'fiplr-find-file)

;; multiple-cursors
(require 'multiple-cursors)
(define-key global-map (kbd "C-c M-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c M-p") 'mc/mark-previous-like-this)
(define-key global-map (kbd "C-c M-l") 'mc/mark-all-like-this)

;; ace-jump-mode
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; ido
(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

;; visual-regexp
(require 'visual-regexp)
(define-key global-map (kbd "C-c C-r") 'vr/replace)
(define-key global-map (kbd "C-c C-q") 'vr/query-replace)
(define-key global-map (kbd "C-c C-m") 'vr/mc-mark)

;; buffer move key bindings
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)
;;

;; multi-term
(require 'helm-mt)
(global-set-key (kbd "C-x t") 'helm-mt)
(helm-mt/wrap-shells t)
 ;;(setq multi-term-program "/bin/bash")

;; key Preferences
(define-key global-map (kbd "M-p") 'move-text-up)
(define-key global-map (kbd "M-n") 'move-text-down)
(define-key global-map (kbd "C-q") 'delete-window)
(global-set-key (kbd "M-N") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-P") (kbd "C-u 1 M-v"))
;; (scroll-bar-mode -1)

;; Personal status bar settings
(setq display-time-day-and-date t
      display-time-24hr-format t)
(display-time)
;;; personal ends here
