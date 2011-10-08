(provide 'msk-auto-complete-settings)

(require 'auto-complete)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(require 'auto-complete-config)
(ac-config-default)
