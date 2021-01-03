#!/usr/bin/env bash

# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·
# Invoke emacs makefile from anywhere in system
# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·

if [ "$#" == 0 ]; then
    ~/.emacs.d/bin/e
elif [ "$#" == 1 ]; then
    # ~/.emacs.d/bin/$@
    if test -f ~/.emacs.d/bin/$1; then
        ~/.emacs.d/bin/$1
    else
        ~/.emacs.d/bin/e $1
    fi
else
    ~/.emacs.d/bin/$1 ${@:2}
fi
