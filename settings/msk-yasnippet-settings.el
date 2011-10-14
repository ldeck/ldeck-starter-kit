(provide 'msk-yasnippet-settings)

(if (file-exists-p (concat msk-user-dir "snippets"))
    (progn
      (setq yas/snippet-dirs
	    (append
	     (list (concat msk-user-dir "snippets"))
             yas/snippet-dirs))
      (yas/reload-all)
