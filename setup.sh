#!/usr/bin/env bash

# libs ############

. lib/txt.sh;
. lib/control.sh
. lib/git.sh

###################

Msg "Installing ctags";
sudo apt-get install ctags;

Msg "Changing directory to vim dotfiles.";
DirPush "~/.vim";

# clone vundle
VUNDLE="https://github.com/gmarik/vundle.git";
Msg "Cloning vundle into bundle/vundle...";
rm -rf bundle/vundle;
git clone $VUNDLE bundle/vundle;

#echo "Updating git submodules.";
#GitInitSubmodules;
#NL;

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
echo "Launching vundle, VIM's ackage manager...";
Pause;

vim +BundleInstall +qall;
Pause; NL;
