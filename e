#!/usr/bin/env bash

# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·
# Invoke emacs makefile from anywhere in system
# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·

if [ "$#" == 1 ]; then
    (cd ~/.emacs.d && make "$1" 2> /dev/null) ||  ~/.emacs.d/bin/e $@
else
    # TODO: figure out how to keep current directory as 'source' for filepaths
    args=\"${@:2}\"
    (cd ~/.emacs.d && make "$1" ARGS="$args") # || make ARGS="$@"
fi
