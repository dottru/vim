" VIM CONFIGS (C) CHEX.IO 2014
" ========================================================================
" ======================================================================== 

" Vundle required settings
set nocompatible               " be iMproved
filetype off                   " required!

" Vundle setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" VIM bundles
" -------------------------- 

Bundle 'altercation/vim-colors-solarized'

Bundle 'xolox/vim-easytags'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'junegunn/vim-easy-align'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'tpope/vim-markdown'
Bundle 'dottru/vim-util'
Bundle 'xolox/vim-reload'
Bundle 'xolox/vim-misc'
Bundle 'chriskempson/base16-vim'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/AutoTag'
Bundle 'mileszs/ack.vim'
Bundle 'ervandew/supertab'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'bbenmills/vimux'


""
"" Looking for the actual config? Try these files!S
""
"" (hint: Press while hovering over a filename to go to that file,
""        When you're done, use Control-o to get back here. ) 

" * ~/.vim/plugin/autocmds.vim		    - Useless.
" * ~/.vim/plugin/choices.vim		    - Random sets/lets.
" * ~/.vim/plugin/completion.vim        - Responsible for autocompletion
" * ~/.vim/plugin/globals.vim           - Sets global opts.
" * ~/.vim/plugin/keybindings-git.vim
" * ~/.vim/plugin/keybindings.vim
" * ~/.vim/plugin/rainbow.vim
" * ~/.vim/plugin/style.vim


" CTAGS AUTO TAGGERS
" autocmd BufWritePost *
"
"       \ if filereadable('tags') |
"       \   call system('ctags -a '.expand('%')) |
"       \ endif:
