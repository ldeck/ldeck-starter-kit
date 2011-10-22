(provide 'msk-yasnippet-settings)

(setq msk-yas-snippets-dir (concat msk-user-dir "snippets"))

(unless (file-exists-p msk-yas-snippets-dir)
  (make-directory msk-yas-snippets-dir))

(setq yas/snippet-dirs
	    (append
	     (list msk-yas-snippets-dir)
             yas/snippet-dirs))

(yas/reload-all)

;; When entering rinari-minor-mode, consider also the snippets in the
;; snippet table "rails-mode"
(add-hook 'rinari-minor-mode-hook
          #'(lambda ()
              (setq yas/mode-symbol 'rails-mode)))
