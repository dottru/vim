#!/usr/bin/env bash
# Shit.

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
git submodule update --init --recursive

# Linker
function Sym () { rm -rf $2; ln -s $1 $2; }

# conf directories
VI=~/.vim;
VIM=`pwd`;

Sym "$VIM" "$VI";
Sym $VIM/vimrc $HOME/.vimrc

popd;

echo "VIM configuration sucessful.";