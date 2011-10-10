;;; msk-ecb-settings.el --- my ecb settings
;;
;; Copyright (c) 2011 Lachlan Deck and contributors
;;
;; Author: Lachlan Deck <lachlan.deck@gmail.com>
;; URL: http://github.com/ldeck/my-starter-kit
;; Version: 1.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Configure additional ecb settings outside of msk-custom.el

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

(provide 'msk-ecb-settings)

;; Enable the CEDET Project management system
(require 'cedet)
(semantic-mode t)
(global-ede-mode t)

;; some sensible key-strokes
(global-set-key (kbd "M-1") 'ecb-goto-window-directories)
(global-set-key (kbd "M-2") 'ecb-goto-window-sources)
(global-set-key (kbd "M-3") 'ecb-goto-window-methods)
(global-set-key (kbd "M-4") 'ecb-goto-window-history)
(global-set-key (kbd "M-!") 'ecb-goto-window-edit1)
(global-set-key (kbd "M-@") 'ecb-goto-window-edit2)
(global-set-key (kbd "M-#") 'ecb-goto-window-edit3)
