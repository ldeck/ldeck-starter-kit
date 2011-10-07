(provide 'msk-rinari-hooks)

(defun parent-file-name (file)
  (cond
   ((not (file-exists-p file)) nil)
   (t
    (let* ((fullpath (directory-file-name (expand-file-name file)))
           (elements (split-string fullpath "/")))
        (cond
         ((equal fullpath "/") nil)
         ((equal (list-length elements) 1) nil)
         ((equal (list-length elements) 2) "/")
         (t
          (mapconcat 'identity (subseq elements 0 -1) "/")))))))

(defun msk-rinari-project-root-p (dir)
  (and (file-directory-p dir)
       (or (file-exists-p (concat (file-name-as-directory dir) "app/controllers/application_controller.rb"))
           (file-exists-p (concat (file-name-as-directory dir) "Gemfile"))
           (file-exists-p (concat (file-name-as-directory dir) "Rakefile")))))

(defun msk-rinari-project-path-p (dir)
  "walk backwards up DIR executing ACTION with (dir file)"
  (and (not (string= dir nil))
       (not (string= dir ""))
       (file-directory-p dir)
       (or (msk-rinari-project-root-p dir)
           (msk-rinari-project-path-p (parent-file-name dir)))))

(defun msk-active-modes ()
  "Give a message of which minor modes are enabled in the current buffer."
  (interactive)
  (let (active-modes)
    (mapc (lambda (mode) (condition-case
                        nil
                        (if (and (symbolp mode) (symbol-value mode))
                            (add-to-list 'active-modes mode))
                      (error nil) ))
          minor-mode-list)
    active-modes))

(defun msk-rinari-active-p ()
  "returns true if rinari-minor-mode is currently active"
  (member 'rinari-minor-mode (msk-active-modes)))

(defun msk-rinari-toggle-hook (dirold dirnew)
  "activate rinari if within a rails project hierarchy"
  (let ((diroldfull (expand-file-name (directory-file-name dirold)))
        (dirnewfull (expand-file-name (directory-file-name dirnew))))
    (if (not (equal diroldfull dirnewfull))
        (cond ((msk-rinari-project-path-p dirnewfull)
               (unless (msk-rinari-active-p)
                 (progn (print "Enabling rinari-minor-mode")
                        (rinari-minor-mode))))
              (t
               (if (msk-rinari-active-p)
                   (progn (print "Disabling rinari-minor-mode")
                          (rinari-minor-mode))))))))

(defun msk-ecb-activation-hook ()
  "hook for when ecb is activated"
  (add-hook 'ecb-after-directory-change-hook 'msk-rinari-toggle-hook)
)

(add-hook 'ecb-activate-hook 'msk-ecb-activation-hook)





