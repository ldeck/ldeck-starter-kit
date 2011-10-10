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
 '(ecb-auto-activate t)
 '(ecb-excluded-directories-regexps (quote ("^\\(CVS\\|TAGS\\)$"
                                            "^\\.\\(git\\|hg\\|svn\\)$"
                                            "^\\.\\{1,2\\}$"
                                            "^\\.\\(DS_Store\\|Trash\\)$")))
 '(ecb-layout-window-sizes (quote (("left8" (ecb-directories-buffer-name 0.25 . 0.28) (ecb-sources-buffer-name 0.25 . 0.23) (ecb-methods-buffer-name 0.25 . 0.28) (ecb-history-buffer-name 0.25 . 0.17)))))
 '(ecb-options-version "2.40")
 '(ecb-tip-of-the-day nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-default-highlight-face ((t (:background "color-238" :foreground "color-106" :weight bold))))
 '(ecb-tree-guide-line-face ((t (:inherit ecb-default-general-face :foreground "color-240" :height 1.0)))))
