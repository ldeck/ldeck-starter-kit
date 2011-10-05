;; theme to use
(provide 'msk-theme-settings)

(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-6.6.1")
;(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-railscasts-0.0.2")

(require 'color-theme)
;(color-theme-initialize)

;(require 'color-theme-railscasts)

(defun code-focus-light ()
  (interactive)
  (color-theme-install
   '(code-focus-light
      ((background-color . "#f2f3f2")
      (background-mode . light)
      (border-color . "#dbd6d6")
      (cursor-color . "#dbc2c2")
      (foreground-color . "#242733")
      (mouse-color . "black"))
     (fringe ((t (:background "#dbd6d6"))))
     (mode-line ((t (:foreground "#bd9e9e" :background "#d9c9c9"))))
     (region ((t (:background "#f7eec5"))))
     (font-lock-builtin-face ((t (:foreground "#216de4"))))
     (font-lock-comment-face ((t (:foreground "#a6b5a6"))))
     (font-lock-function-name-face ((t (:foreground "#c030d9"))))
     (font-lock-keyword-face ((t (:foreground "#3d94c7"))))
     (font-lock-string-face ((t (:foreground "#e08838"))))
     (font-lock-type-face ((t (:foreground"#13c40e"))))
     (font-lock-variable-name-face ((t (:foreground "#c76f33"))))
     (minibuffer-prompt ((t (:foreground "#979caa" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t))))
     )))
;(provide 'code-focus-light)

(code-focus-light)
