(provide 'msk-rinari-hooks)

(defun msk-rinari-toggle-p (dirold dirnew)
  "hook to determine whether to toggle rinari"
  (cond ((or (and (msk-rinari-active-p)
                  (not (msk-rails-project-path-p dirnew)))
             (and (not (msk-rinari-active-p))
                  (msk-rails-project-path-p dirnew)))
         t)
        (t nil)))

(defun msk-rinari-toggle-hook (dirold dirnew)
  "hook to run when `msk-rinari-toggle-p returns true"
  (progn
    (print "toggling rinari-minor-mode")
    (rinari-minor-mode)))

(add-hook 'msk-ecb-after-directory-change-toggle-p 'msk-rinari-toggle-p)
(add-hook 'msk-ecb-after-directory-change-hook 'msk-rinari-toggle-hook)
