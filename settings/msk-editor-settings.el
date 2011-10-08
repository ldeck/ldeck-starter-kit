(provide 'msk-editor-settings)

;; autosaves and backups
(setq auto-save-file-name-transforms `(("." . ,(expand-file-name "~/.emacs.d/autosave")))
(setq tramp-auto-save-directory "~/.emacs.d/tramp-autosave")

;; whitespace settings
(setq require-final-newline 't)
(setq delete-trailing-whitespace 't)
;(setq-default tab-width 2)
;(setq-default indent-tabs-mode nil)

;; general editing
;(delete-selection-mode t)
;(follow-mode t)                         ; Easier editing of long files

;; cua-mode for rectangle editing
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
;(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t)
(cua-selection-mode t) ; for standard emacs key-commands
(global-set-key (kbd "M-RET") 'cua-set-rectangle-mark) ; C-RET doesn't work in the terminal

;; fonts
;(global-font-lock-mode t)               ; syntax highlighting
;(setq font-lock-maximum-decoration t)   ; mode default level of fontification

;; layout
;(line-number-mode t)
;(setq linum-format " %4d ")
;;(global-linum-mode t)

;; where am I
;(require 'hl-line)                      ; highlight current line
;(global-hl-line-mode t)
;(highlight-current-line-set-bg-color "#E5F5B3")


