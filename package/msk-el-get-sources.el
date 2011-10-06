;; my el-get source definitions
(provide 'msk-el-get-sources)

;; define additional packages sources to install via el-get
(setq el-get-sources
      '((:name ecb
              :type git
              :url "git://github.com/emacsmirror/ecb.git"
              :load "ecb.el")
        (:name rinari
               :type git
               :url "git://github.com/eschulte/rinari.git")
        (:name feature-mode
               :type git
               :url "git://github.com/michaelklishin/cucumber.el.git"
               :load "feature-mode.el")
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


