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

;; try expanding yasnippet first on TAB
;; http://code.google.com/p/yasnippet/issues/detail?id=71
(defun yas/advise-indent-function (function-symbol)
  (eval `(defadvice ,function-symbol (around yas/try-expand-first activate)
           ,(format
             "Try to expand a snippet before point, then call `%s' as usual"
             function-symbol)
           (let ((yas/fallback-behavior nil))
             (unless (and (interactive-p)
                          (yas/expand))
               ad-do-it)))))

(yas/advise-indent-function 'indent-for-tab-command)
