#!/usr/bin/env bash
. lib/txt.sh;
. lib/control.sh
. lib/git.sh
############# libs #

# TODO: re-enable
# Msg "Installing ctags";
# sudo apt-get install ctags;

Msg "Changing directory to vim dotfiles.";
pushd "${HOME}/.vim/";

VUNDLE="https://github.com/gmarik/vundle.git";
Msg "Cloning vundle into bundle/vundle...";
rm -rf bundle/vundle;
git clone $VUNDLE bundle/vundle;


Msg "Installing bundles.";
Pause;

vim +BundleInstall +qall;

# These come in renamed to avoid errorsa during installation
mv _plugin plugin; 

Msg "VIM configuration completed.";
Pause;
popd;
