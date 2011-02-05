#! /bin/sh
# MusiXTeX 3 pass script

if !([ -f "$1".tex ]); then exit; fi

if [ -f "$1".mx1 ]; then rm "$1".mx1; fi
if [ -f "$1".mx2 ]; then rm "$1".mx2; fi

#ptex \&musixtex "$@"
ptex "$@" && musixflx "$1" && ptex "$@"
