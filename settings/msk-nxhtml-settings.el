(provide 'msk-nxhtml-settings)

(setq
 nxhtml-global-minor-mode t
 nxhtml-skip-welcome t
 indent-region-mode t
 rng-nxml-auto-validate-flag nil
 nxml-degraded t)

(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo-mode))
