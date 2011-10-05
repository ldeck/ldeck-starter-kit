(provide 'msk-auto-complete-settings)

(add-to-list 'load-path (file-expand-wildcards "~/.emacs.d/elpa/auto-complete-*/"))
(require 'auto-complete)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(require 'auto-complete-config)
(ac-config-default)
