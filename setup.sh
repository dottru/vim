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

# Clone vundle into fresh dir
rm -rf bundle/vundle; git clone $VUNDLE bundle/vundle;

# Run setup
Msg "Installing bundles.";
vim +BundleInstall +qall;

# These come in renamed to avoid errors during installation
if [ -d "_plugin" ]; then
    echo "Renamed plugins."; Pause;
    mv _plugin plugin; 
fi;

# Build YCM
pushd 'bundle/YouCompleteMe';
Msg "Install: cmake python-dev\n\n    before pressing [Enter].";
Pause;
./install.sh;
popd;

Msg "VIM configuration completed.";
Pause;
popd;
