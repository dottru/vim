#!/usr/bin/env bash

VUNDLE="https://github.com/gmarik/vundle.git";
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "dir :: $DIR"; read;

echo "This *will* destroy ~/.vim"; read;
pushd $DIR;

echo "Linking vim dir and config.";
rm -rf ~/.vim; rm -rf ~/.vimrc;
ln -s $DIR ~/.vim; ln -s $DIR/vimrc ~/.vimrc;

rm -rf bundle; mkdir bundle;
git clone $VUNDLE bundle/vundle;

echo "Installing vundle packages.";
mv plugin _plugin;
vim +BundleInstall +qall;
mv _plugin plugin;

echo "VIM configuration completed. Press any key to exit.";
read; popd;
