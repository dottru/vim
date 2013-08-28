#!/usr/bin/env bash

# init git modules
git submodule init

# symlink the vims
ln -s . ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
