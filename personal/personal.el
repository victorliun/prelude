;;; package --- Summary
;;; Commentary:
;;; Code:

(prelude-require-packages
 '(
   ace-jump-mode
   auto-complete
   color-theme
   emamux
   emmet-mode
   fiplr
   hackernews
   helm
   ido-vertical-mode
   linum-relative
   multiple-cursors
   popwin
   prodigy
   elpy
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
(linum-relative-on)

;; auto-completion
(require 'auto-complete)

;; fiplr
(setq fiplr-root-markers '(".git" ".svn"))
(setq fiplr-ignored-globs
      '((directories (".git" ".svn" "build" "vendor" "node_modules" "non-git"))
        (files ("*.jpg" "*.png" "*.zip" "*~")))
      )
(global-set-key (kbd "C-x f") 'fiplr-find-file)

;; multiple-cursors
(require 'multiple-cursors)
(define-key global-map (kbd "C-c m") 'mc/mark-all-like-this)
(define-key global-map (kbd "M-n") 'mc/mark-next-lines)

;; ace-jump-mode
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; ido
(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)

;;; personal ends here
