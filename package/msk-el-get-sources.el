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

;; todos
;; -----
;; fix jump / inflections: use when-compile
;; fix starter-kit autoloads: fix el-get load-path
;; upgrading ruby-compilation: fix depend conflict inf-ruby version

;; source wishes
;; ------
;; jdee
;; rdebug / ruby-debug?

;; define custom recipes
(setq el-get-sources
      '((:name ahg)
        (:name anything)
        (:name auto-complete)
        (:name auto-complete-css)
        (:name auto-complete-emacs-lisp)
        (:name auto-complete-etags)
        (:name auto-complete-ruby)
        (:name auto-complete-yasnippet)
        (:name css-mode)
        (:name color-theme-zenburn
               :depends color-theme
               :after (lambda ()
                        (progn
                          (require 'zenburn)
                          (zenburn))))
        (:name ecb
               :type git
               :url "git://github.com/emacsmirror/ecb.git"
               :load "ecb.el")
        (:name elisp-slime-nav
               :type elpa)
        (:name el-get
               :branch "master")
        (:name ensime
	       :depends scala-mode)
        (:name feature-mode)
        (:name flymake-point)
        (:name flymake-ruby)
        (:name ido-ubiquitous
               :type git
               :url "git://github.com/technomancy/ido-ubiquitous.git")
        (:name idle-highlight-mode
               :type elpa
               :load "idle-highlight-mode.el")
        (:name markdown-mode)
        (:name nav)
        (:name nxhtml)
        (:name rinari)
        (:name rspec-mode)
        (:name ruby-electric)
        (:name ruby-test-mode)
        (:name ruby-mode)
        (:name rvm)
        (:name scala-mode)
        (:name smex)
        (:name starter-kit
               :type git
               :branch "v2"
               :url "git://github.com/ldeck/emacs-starter-kit.git"
               :depends (elisp-slime-nav
			 find-file-in-project
			 idle-highlight-mode
			 ido-ubiquitous
			 inf-ruby
			 magit
			 paredit
			 smex)
               :load-path ("." "modules"))
        (:name yaml-mode)
        (:name yari)
        (:name yasnippet)
        ))

(setq msk-el-get-packages 
      (append
       '()
       (mapcar 'el-get-source-name el-get-sources)
       )
      )


