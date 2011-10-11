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

;; define custom recipes
(setq el-get-sources
      '((:name auto-complete)
        (:name auto-complete-css)
        (:name auto-complete-emacs-lisp)
        (:name auto-complete-etags)
        (:name auto-complete-ruby)
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
        (:name feature-mode)
	(:name flymake-ruby)
        (:name jump
               :type elpa)
	(:name markdown-mode)
	(:name smex)
        (:name starter-kit
               :type git
               :branch "master"
               :url "git://github.com/technomancy/emacs-starter-kit.git"
               :depends (elisp-slime-nav
                          inf-ruby)
               :after (lambda ()
                        (progn
			  (require 'paredit)
                          (require 'starter-kit-bindings)
                          (require 'starter-kit-eshell)
			  (require 'starter-kit-lisp))))
))

(setq msk-el-get-packages 
      (append
       '(paredit)
       (mapcar 'el-get-source-name el-get-sources)
       )
)

;; (setq msk-el-get-packages
;;       (append
;;        '(ahg
;;          anything
;;          auto-complete
;;          auto-complete-css
;;          auto-complete-emacs-lisp
;;          auto-complete-etags
;;          auto-complete-ruby
;;          auto-complete-yasnippet
;;          color-theme
;;          color-theme-zenburn
;;          css-mode
;;          ecb
;;          elisp-slime-nav
;;          el-get
;;          feature-mode
;;          flymake-point
;;          flymake-ruby
;;          inf-ruby
;;          jump
;;          markdown-mode
;;          nav
;;          nxhtml
;;          rdebug
;;          rhtml-mode
;;          rinari
;;          rspec-mode
;;          ruby-compilation
;;          ruby-electric
;;          ruby-test-mode
;;          rvm
;;          smex
;;          starter-kit
;;          yaml-mode
;;          yari
;;          yasnippet)
;;         (mapcar 'el-get-source-name el-get-sources)))
