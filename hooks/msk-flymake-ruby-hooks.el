(provide 'msk-flymake-ruby-hooks)

(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
