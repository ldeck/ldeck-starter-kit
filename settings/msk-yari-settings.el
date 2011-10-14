(provide 'msk-yari-settings)

(defun msk-yari-bind-key ()
  (local-set-key (kbd "C-h r") 'yari))

(defun msk-yari-custom-help ()
  (interactive)
  (message "Use [C-h r] to invoke `yari', [C-u M-x yari] to invoke reloading all completion targets"))

(defun msk-yari-help-key ()
  (local-set-key (kbd "C-h C-r") 'msk-yari-custom-help))

(add-hook 'ruby-mode-hook 'msk-yari-bind-key)
(add-hook 'ruby-mode-hook 'msk-yari-help-key)
