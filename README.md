# A handy vim config

## (This time, for Macs.)

Having recently bought myself a macbook pro, I needed to branch off these vim configs for OSX. This repository is the culmination of those efforts.

The `.vimrc` is pretty empty, aside from the pathogen call. Instead, vim loads the scripts in .vim/plugin in alphabetical order. I like how organised it feels, though it does make edits a bit annoying. I've included filel names (which you can `gf` to) in order to alleviate some of this difficulty.

## Overview

* `plugin/choices.vim` has all the set and let commands in it.
* `plugin/globals.vim` handles all the global variables used by our various pathogen bundles.
* `plugins/keybindings.vim` is where all of my kb shortcuts are defined.
* `plugin/nerd-opts.vim` opens the file explorer on start. 
* `plugin/style.vim` handles the appearance.

[fonts]:     https://github.com/eugeneching/consolas-powerline-vim
[solarized]: https://github.com/altercation/vim-colors-solarized.git

## Plugins

This VIM distribution comes with a handful of plugins. Have at it.

  [minibufexpl]:  https://github.com/fholgado/minibufexpl.vim.git
  [nerdtree]:     https://github.com/scrooloose/nerdtree.git
  [ctrlp]:        https://github.com/kien/ctrlp.vim.git
  [supertab]:     https://github.com/ervandew/supertab
  [airline]:      https://github.com/bling/vim-airline
  [bufferline]:   https://github.com/bling/vim-bufferline.git
  [syntastic]:    https://github.com/scrooloose/syntastic.git
  [taglist]:      https://github.com/vim-scripts/taglist.vim

## Todo

Fix all the things.
