(provide 'msk-feature-mode-settings)

(defun msk-feature-mode-key-bindings ()
  (progn
    (local-set-key (kbd "C-c ,s") 'feature-verify-scenario-at-pos)
    (local-set-key (kbd "C-c ,v") 'feature-verify-all-scenarios-in-buffer)
    (local-set-key (kbd "C-c ,f") 'feature-verify-all-scenarios-in-project)
    (local-set-key (kbd "C-c ,g") 'feature-goto-step-definition)))

(add-hook 'feature-mode-hook 'msk-feature-mode-key-bindings)

