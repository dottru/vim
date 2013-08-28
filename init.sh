#!/usr/bin/env bash

# init git modules
git submodule init

# sym vim dir
VI=~/.vim;
rm -rf $VI;
ln -s ../vim $VI;

# sym vimrc
RC=~/.vimrc;
rm -rf $RC;
ln -s ./vimrc $RC;
