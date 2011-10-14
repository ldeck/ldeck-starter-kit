#!/bin/bash
mkdir -p ~/.emacs.d/eshell;
. ~/.profile;
alias | sed -E "s/^alias ([^=]+)='(.*)'$/alias \1 \2 \$*/g; s/'\\\''/'/g;" >~/.emacs.d/eshell/alias
