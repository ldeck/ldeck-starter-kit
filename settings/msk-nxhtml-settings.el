(provide 'msk-nxhtml-settings)

(setq
 nxhtml-global-minor-mode t
 nxhtml-skip-welcome t
 indent-region-mode t
 rng-nxml-auto-validate-flag nil
 nxml-degraded t)

(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo-mode))

(add-to-list 'auto-mode-alist '("\\.html" . nxhtml-mumamo-mode))

(add-hook 'nxhtml-mode-hook 'yas/minor-mode-on)
(add-hook 'nxhtml-mumamo-mode-hook 'yas/minor-mode-on)
(add-hook 'mumamo-border-mode-hook 'yas/minor-mode-on)
