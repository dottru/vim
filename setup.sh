#!/usr/bin/env bash

## Includes

. lib/txt.sh;
. lib/control.sh
. lib/git.sh

###################

Section " VIM configuration";
Msg "Changing directory to vim dotfiles.";

# CD to script dir
DirPush "./vim";

echo "Updating git submodules.";
GitInitSubmodules;
NL;

# vim variables
VI_CFG="${HOME}/.vim";
VIM=`pwd`;

Msg " VIM directories ------------------- ";
Msg "     dotfiles - `pwd`";
Msg "     cfg      - ${VI_CFG}"; NL;

LinkBack "${VIM}" "${VI_CFG}";
LinkBack "${VIM}/vimrc" "${HOME}/.vimrc";

DirPop;

echo "VIM configuration sucessful.";
Pause; NL;
