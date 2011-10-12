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


;; kill ring customisations:
;; ------------------------
;; not currently a fan of having everything bar the kitchen sink going
;; onto the kill ring. For now reserve this for specific kills which
;; should make it much simpler to find the block to select in the kill
;; ring that you want to yank.

(defun msk-delete-word-forward (&optional count)
  "Delete characters forward until the end of word, optionally COUNT times.
This function will not push the deleted text onto the kill ring"
  (interactive)
  (delete-region (point) (progn (forward-word count) (point))))

(defun msk-delete-word-backward (&optional count)
  "Delete characters backward until the start of the word, optionally COUNT times.
This function will not push the deleted text onto the kill ring"
  (interactive)
  (let ((n (or count 1)))
    (msk-delete-word-forward (- n))))

(defun msk-delete-line-forward ()
  "Delete the remainder of the line without pushing to the kill ring"
  (interactive)
  (delete-region
   (point)
   (save-excursion (move-end-of-line 1) (point)))
)

(defun msk-delete-line-backward ()
  "Delete text between the beginning of the line and the point
 without pushing to the kill ring"
  (interactive)
  (delete-region
   (save-excursion (move-beginning-of-line 1) (point))
   (point))
)

(global-set-key (kbd "M-d") 'msk-delete-word-forward)
(global-set-key (kbd "M-DEL") 'msk-delete-word-backward)
(global-set-key (kbd "C-k") 'msk-delete-line-forward)
(global-set-key (kbd "C-c C-k") 'msk-delete-line-backward)

;; Clipboard interaction
;; ---------------------
;; use pbpaste | pbcopy on darwin

(defun pbboard-paste ()
  (shell-command-to-string "pbpaste"))

(defun pbboard-copy (text &optional push)
  (let ((process-connection-type nil)) 
      (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
        (process-send-string proc text)
        (process-send-eof proc))))

(defun ns-cut-pasteboard (p1 p2)
  (interactive "r*")
  (ns-set-pasteboard
   (filter-buffer-substring p1 p2 t)))

(if (eq system-type 'darwin)
    (if window-system
        (progn
          (setq interprogram-cut-function 'ns-cut-pasteboard)
          (setq interprogram-paste-function 'ns-get-pasteboard))
      (progn
        (setq interprogram-cut-function 'pbboard-copy)
        (setq interprogram-paste-function 'pbboard-paste))
     ())
    (setq interprogram-cut-function 'paste-to-osx))

