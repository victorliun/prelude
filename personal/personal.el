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

;; fiplr config
(setq fiplr-root-markers '(".git" ".svn"))
(setq fiplr-ignored-globs '((directories (".git" ".svn"))
                            (files ("*.jpg" "*.png" "*.zip" "*~"))))
(global-set-key (kbd "C-x f") 'fiplr-find-file)
