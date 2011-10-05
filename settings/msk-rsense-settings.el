(provide 'msk-rsense-settings)

(setq rsense-home (expand-file-name (concat user-emacs-directory "rsense/rsense-0.3")))
(add-to-list 'load-path (concat rsense-home "/etc"))
(require 'rsense)
