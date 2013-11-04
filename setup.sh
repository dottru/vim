#!/usr/bin/env bash
. lib/txt.sh;
. lib/control.sh
. lib/git.sh
############# libs #


Msg "Installing ctags";
sudo apt-get install ctags;

Msg "Changing directory to vim dotfiles.";
DirPush "~/.vim";
Pause;

VUNDLE="https://github.com/gmarik/vundle.git";
Msg "Cloning vundle into bundle/vundle...";
rm -rf bundle/vundle;
git clone $VUNDLE bundle/vundle;
Pause;

Msg "Installing bundles.";
vim +BundleInstall +qall;
Pause;
