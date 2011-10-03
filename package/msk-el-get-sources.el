;; my el-get source definitions

;; define additional packages sources to install via el-get
(setq msk-el-get-sources
      '((:name ecb
               :type git
               :url "git://github.com/emacsmirror/ecb.git"
                      :load "ecb.el")
        (:name rinari
               :type git
               :url "git://github.com/eschulte/rinari.git")))

(setq msk-el-get-packages
      (append
       '(el-get rinari ecb)
       (mapcar 'el-get-source-name msk-el-get-sources)))
