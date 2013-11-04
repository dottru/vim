#!/usr/bin/env bash

. lib/txt.sh;
. lib/control.sh
. lib/git.sh

VUNDLE="https://github.com/gmarik/vundle.git";

############# libs #
# TODO: re-enable
# Msg "Installing ctags";
# sudo apt-get install ctags;
####################

Msg "Changing directory to vim dotfiles.";
pushd "${HOME}/.vim";

Msg "Cloning vundle into bundle/vundle...";
rm -rf bundle/vundle; git clone $VUNDLE bundle/vundle;

Msg "Installing vundle packages.";
vim +BundleInstall +qall;
Pause;

# These come in renamed to avoid errors during installation
if [ -d "_plugin" ]; then
    # TODO: remove
    echo "Renamed plugins."; Pause;
    mv _plugin plugin; 
fi;

# Build YCM
pushd "bundle/YouCompleteMe";
Msg "Install: cmake python-dev\n\r\n\r    before pressing [Enter]."; Pause;
./install.sh; popd;

Msg "VIM configuration completed.";
Pause; popd;
