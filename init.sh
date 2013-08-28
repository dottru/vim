#!/usr/bin/env bash



DIR=$(cd $(dirname "$0"); pwd)
echo "`$DIR` is from me"

# init git modules
git submodule init
git submodule update

# Linker
function Sym () { rm -rf $2; ln -s $1 $2; }

# conf directories
VI=~/.vim; RC=~/.vimrc;
VIM=`pwd`;

Sym "$VIM" "$VI";
Sym "$VIM/vimrc" "$RC";
