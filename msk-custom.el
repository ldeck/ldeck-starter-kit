(progn (print "msk-custom.el loaded..."))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-auto-activate t)
 '(ecb-excluded-directories-regexps (quote ("^\\(CVS\\|TAGS\\)$"
                                            "^\\.\\(git\\|hg\\|svn\\)$"
                                            "^\\.\\{1,2\\}$"
                                            "^\\.\\(DS_Store\\|Trash\\)$")))
 '(ecb-layout-window-sizes (quote (("left8" (ecb-directories-buffer-name 0.25 . 0.28) (ecb-sources-buffer-name 0.25 . 0.23) (ecb-methods-buffer-name 0.25 . 0.28) (ecb-history-buffer-name 0.25 . 0.17)))))
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote (("/Users/ldeck" "ldeck") ("/Users/ldeck/Documents/Work/DiUS/client/macquarie/marquis" "marquis") ("/Users/ldeck/Documents/Developer/emacs/my-starter-kit" "msk"))))
 '(ecb-tip-of-the-day nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-default-highlight-face ((t (:background "color-238" :foreground "color-106" :weight bold))))
 '(ecb-tree-guide-line-face ((t (:inherit ecb-default-general-face :foreground "color-240" :height 1.0)))))
