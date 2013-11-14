# dottru's vim cfg

Here lie the dotfiles for my vim installation. You'll need one of those patched fonts to use the powerline glyphs in PuTTY.
Also try to get the solarised colour scheme for vim, it will save yer life fool.

The `.vimrc` is pretty empty, aside from the pathogen call. Instead, vim loads the scripts in .vim/plugin in alphabetical order. I like how organised
it feels. There's no real advantage. `plugin/choices.vim` has all the set and let commands in it. `plugin/globals.vim`
handles all the global variables used by our various pathogen bundles. `plugins/keybindings.vim` is where all of my kb
shortcuts are defined. `plugin/nerd-opts.vim` opens the file explorer on start. 

Oh, and `plugin/style.vim` handles the appearance. Make sure to install the PuTTY colourscheme from [tomorrow].

[tomorrow]:  https://github.com/chriskempson/tomorrow-theme


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

