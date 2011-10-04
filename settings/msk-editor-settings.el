(provide 'msk-editor-settings)

;(setq-default tab-width 2)              ; tabs
;(setq-default indent-tabs-mode nil)
;(global-font-lock-mode t)               ; syntax highlighting
;(setq font-lock-maximum-decoration t)   ; mode default level of fontification
;(delete-selection-mode t)

;(line-number-mode t)
;(setq linum-format " %4d ")
;;(global-linum-mode t)

;(follow-mode t)                         ; Easier editing of longs files

;; where am I
;(require 'hl-line)                      ; highlight current line
;(global-hl-line-mode t)
;(highlight-current-line-set-bg-color "#E5F5B3")

;; Editing Rectangles is cool!
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
;(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t)
(cua-selection-mode t) ; for standard emacs key-commands
(global-set-key (kbd "M-RET") 'cua-set-rectangle-mark) ; C-RET doesn't work in the terminal
