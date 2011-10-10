;;; msk-editing-settings.el --- My basic editing settings
;;
;; Copyright (c) 2011 Lachlan Deck and contributors
;;
;; Author: Lachlan Deck <lachlan.deck@gmail.com>
;; URL: http://github.com/ldeck/my-starter-kit
;; Version: 1.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Various settings for basic editing.

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
(provide 'msk-editor-settings)

;; autosaves and backups
(make-directory "~/.emacs.d/autosave" t)
(setq auto-save-file-name-transforms `((".*" "~/.emacs.d/autosave/\\1" t)))
(setq tramp-auto-save-directory "~/.emacs.d/tramp-autosave")

;; whitespace settings
(setq require-final-newline 't)
(setq delete-trailing-whitespace 't)
;(setq-default tab-width 2)
;(setq-default indent-tabs-mode nil)

;; general editing
;(delete-selection-mode t)
;(follow-mode t)                         ; Easier editing of long files

;; cua-mode for rectangle editing
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
;(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t)
(cua-selection-mode t) ; for standard emacs key-commands
(global-set-key (kbd "M-RET") 'cua-set-rectangle-mark) ; C-RET doesn't work in the terminal

;; fonts
;(global-font-lock-mode t)               ; syntax highlighting
;(setq font-lock-maximum-decoration t)   ; mode default level of fontification

;; layout
;(line-number-mode t)
;(setq linum-format " %4d ")
;;(global-linum-mode t)

;; where am I
;(require 'hl-line)                      ; highlight current line
;(global-hl-line-mode t)
;(highlight-current-line-set-bg-color "#E5F5B3")


