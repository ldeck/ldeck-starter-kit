;;; msk-file-settings.el --- as the name implies
;;
;; Copyright (c) 2011 Lachlan Deck and contributors
;;
;; Author: Lachlan Deck <lachlan.deck@gmail.com>
;; URL: http://github.com/ldeck/my-starter-kit
;; Version: 1.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; File type settings

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
(provide 'msk-file-settings)

(eval-after-load 'find-file-in-project
  '(progn
     (add-to-list 'ffip-patterns "*.scala")
     (add-to-list 'ffip-patterns "*.props")
     (add-to-list 'ffip-patterns "*.properties")
     (add-to-list 'ffip-patterns "*.xml")))

(add-to-list 'auto-mode-alist '("\\.props$" . conf-javaprop-mode))
;; (add-hook 'conf-javaprop-mode-hook
;;           '(lambda () (conf-quote-normal nil)))
