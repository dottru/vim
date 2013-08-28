#!/usr/bin/env bash

function GetCWD () {
	SCRIPT_PATH="${BASH_SOURCE[0]}";
	if ([ -h "${SCRIPT_PATH}" ]) then
	  while([ -h "${SCRIPT_PATH}" ]) do SCRIPT_PATH=`readlink "${SCRIPT_PATH}"`; done
	fi
	pushd . > /dev/null
	cd `dirname ${SCRIPT_PATH}` > /dev/null
	SCRIPT_PATH=`pwd`;
	popd  > /dev/null
	echo $SCRIPT_PATH;
}; pushd "`GetCWD`";


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

popd;

echo "VIM configuration sucessful.";
