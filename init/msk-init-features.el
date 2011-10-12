;;; my-starter-kit.el --- customise features after el-get and elpa
;;have been initialised.
;;
;; Copyright (c) 2011 Lachlan Deck and contributors
;;
;; Author: Lachlan Deck <lachlan.deck@gmail.com>
;; URL: http://github.com/ldeck/my-starter-kit
;; Version: 1.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Should be no reason to use this.

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

(provide 'msk-init-features)

;;
;; custom features init goes here (e.g., in specific order)
;; e.g., (require 'foo)
;;

(dolist (d '("elisp-slime-nav"
             "find-file-in-project"
             "idle-highlight-mode"
             "ido-ubiquitous"
             "inf-ruby"
             "magit"
             "paredit"
             "smex"))
  (progn
    (add-to-list 'load-path  (concat "~/.emacs.d/el-get/" d))
    (require (intern d))
  ))

(add-to-list 'load-path (expand-file-name "~/.emacs.d/el-get/starter-kit"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/el-get/starter-kit/modules"))

(dolist (d '(starter-kit-defuns
             starter-kit-misc
             starter-kit-bindings
             starter-kit-eshell
             starter-kit-js
             starter-kit-lisp
             starter-kit-ruby))
  (require d))

