(provide 'msk-rinari-hooks)

;; (defun msk-rinari-toggle-hook (dirold dirnew)
;;   "hook to toggle rinari-minor-mode for ecb-after-directory-change-hook"
;;     (cond
;;      ((msk-rinari-active-p)
;;       (progn
;;         (print "deactivating rinari-minor-mode")
;;         (rinari-minor-mode -1)))
;;      (t
;;       (progn
;;         (print "activating rinari-minor-mode")
;;         (rinari-minor-mode t)))))

;(add-hook 'msk-ecb-after-directory-change-hook 'msk-rinari-toggle-hook)
