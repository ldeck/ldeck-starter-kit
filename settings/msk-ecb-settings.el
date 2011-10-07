;; ecb config
(provide 'msk-ecb-settings)

;; Enable the CEDET Project management system
(require 'cedet)
(semantic-mode t)
(global-ede-mode t)

;(add-to-list 'load-path "~/.emacs.d/el-get/ecb")
;(require 'ecb)
;(ecb-activate)

;; some sensible key-strokes
(global-set-key (kbd "M-1") 'ecb-goto-window-directories)
(global-set-key (kbd "M-2") 'ecb-goto-window-sources)
(global-set-key (kbd "M-3") 'ecb-goto-window-methods)
(global-set-key (kbd "M-4") 'ecb-goto-window-history)
(global-set-key (kbd "M-!") 'ecb-goto-window-edit1)
(global-set-key (kbd "M-@") 'ecb-goto-window-edit2)
(global-set-key (kbd "M-#") 'ecb-goto-window-edit3)
