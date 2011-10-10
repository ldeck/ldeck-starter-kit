;;; msk-el-get-sources.el --- my el-get sources
;;
;; Copyright (c) 2011 Lachlan Deck and contributors
;;
;; Author: Lachlan Deck <lachlan.deck@gmail.com>
;; URL: http://github.com/ldeck/my-starter-kit
;; Version: 1.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Place to define packages to grab via el-get.

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

(provide 'msk-el-get-sources)

;; define additional packages sources to install via el-get
(setq el-get-sources
      '((:name ecb
              :type git
              :url "git://github.com/emacsmirror/ecb.git"
              :load "ecb.el")
        (:name rinari)
        (:name feature-mode
               :description "Major mode for Cucumber feature files (copy of recipe from el-get)"
               :type git
               :url "git://github.com/michaelklishin/cucumber.el.git"
               :features feature-mode
               :post-init (lambda ()
                    (add-to-list 'auto-mode-alist '("\\.feature\\'" . feature-mode))))
        (:name zenburn
               :type git
               :url "git://github.com/dbrock/zenburn-el.git"
               :load "zenburn.el"
               :after (lambda ()
                        (zenburn)))
        ))

(setq msk-el-get-packages
      (append
       '(el-get rinari ecb feature-mode)
       (mapcar 'el-get-source-name el-get-sources)))


