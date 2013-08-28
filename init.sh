#!/usr/bin/env bash

# init git modules
git submodule init

# Linker
function Sym () { rm -rf $2; ln -s $1 $2; }

# conf directories
VI=~/.vim; RC=~/.vimrc;
VIM=`pwd`;

Sym "$VIM" "$VI";
Sym "$VIM/vimrc" "$RC";
