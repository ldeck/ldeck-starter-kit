;;; msk-custom.el --- customize target file.
;;
;; Copyright (c) 2011 Lachlan Deck and contributors
;;
;; Author: Lachlan Deck <lachlan.deck@gmail.com>
;; URL: http://github.com/ldeck/my-starter-kit
;; Version: 1.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; This file is where emacs customize settings end up.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(progn (print "msk-custom.el loaded..."))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-auto-activate f)
 '(ecb-excluded-directories-regexps (quote ("^\\.\\(DocumentRevisions\\|Spotlight\\)-V100$"
                                            "^\\.Trashes$"
                                            "^\\(CVS\\|TAGS\\)$"
                                            "^\\.\\(git\\|hg\\|svn\\)$"
                                            "^\\.\\{1,2\\}$"
                                            "^\\.\\(DS_Store\\|Trash\\)$")))
 '(ecb-key-map (quote ("C-c /"
                       (t "fh" ecb-history-filter)
                       (t "fs" ecb-sources-filter)
                       (t "fm" ecb-methods-filter)
                       (t "fr" ecb-methods-filter-regexp)
                       (t "ft" ecb-methods-filter-tagclass)
                       (t "fc" ecb-methods-filter-current-type)
                       (t "fp" ecb-methods-filter-protection)
                       (t "fn" ecb-methods-filter-nofilter)
                       (t "fl" ecb-methods-filter-delete-last)
                       (t "ff" ecb-methods-filter-function)
                       (t "p" ecb-nav-goto-previous)
                       (t "n" ecb-nav-goto-next)
                       (t "lc" ecb-change-layout)
                       (t "lr" ecb-redraw-layout)
                       (t "lw" ecb-toggle-ecb-windows)
                       (t "lt" ecb-toggle-layout)
                       (t "s" ecb-window-sync)
                       (t "r" ecb-rebuild-methods-buffer)
                       (t "a" ecb-toggle-auto-expand-tag-tree)
                       (t "x" ecb-expand-methods-nodes)
                       (t "h" ecb-show-help)
                       (t "gl" ecb-goto-window-edit-last)
                       (t "g1" ecb-goto-window-edit1)
                       (t "g2" ecb-goto-window-edit2)
                       (t "gc" ecb-goto-window-compilation)
                       (t "gd" ecb-goto-window-directories)
                       (t "gs" ecb-goto-window-sources)
                       (t "gm" ecb-goto-window-methods)
                       (t "gh" ecb-goto-window-history)
                       (t "ga" ecb-goto-window-analyse)
                       (t "gb" ecb-goto-window-speedbar)
                       (t "md" ecb-maximize-window-directories)
                       (t "ms" ecb-maximize-window-sources)
                       (t "mm" ecb-maximize-window-methods)
                       (t "mh" ecb-maximize-window-history)
                       (t "ma" ecb-maximize-window-analyse)
                       (t "mb" ecb-maximize-window-speedbar)
                       (t "e" eshell)
                       (t "o" ecb-toggle-scroll-other-window-scrolls-compile)
                       (t "\\" ecb-toggle-compile-window)
                       (t "/" ecb-toggle-compile-window-height)
                       (t "," ecb-cycle-maximized-ecb-buffers)
                       (t "." ecb-cycle-through-compilation-buffers))))
 '(ecb-layout-window-sizes (quote (("left8"
                                    (ecb-directories-buffer-name 0.25 . 0.28)
                                    (ecb-sources-buffer-name 0.25 . 0.23)
                                    (ecb-methods-buffer-name 0.25 . 0.28)
                                    (ecb-history-buffer-name 0.25 . 0.17)))))
 '(ecb-options-version "2.40")
 '(ecb-tip-of-the-day nil)
 '(mumamo-chunk-coloring 1))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-default-highlight-face ((t (:background "color-238" :foreground "color-106" :weight bold))))
 '(ecb-tree-guide-line-face ((t (:inherit ecb-default-general-face :foreground "color-240" :height 1.0))))
 '(flymake-warnline ((t (:background "color-53"))))
 '(mumamo-background-chunk-major ((t (:background "color-241"))))
 '(mumamo-background-chunk-submode1 ((t (:background "color-239"))))
 '(mumamo-background-chunk-submode2 ((t (:background "color-237"))))
 '(mumamo-background-chunk-submode3 ((t (:background "color-235"))))
 '(mumamo-background-chunk-submode4 ((t (:background "color-233")))))
