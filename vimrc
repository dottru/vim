"
" dottru/vim dotfiles repo for my vim configuration
"

" REMINDER :: set a global mark here. mV is bound from <Leader>v
" TODO :: install fugitive and make an f9/f10 shortcut for it

" TODO :: use sessions like a boss
" To automatically save and restore views for *.c files: >
"   au BufWinLeave *.c mkview
"   au BufWinEnter *.c silent loadview

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
Bundle 'tpope/vim-fugitive'
"Bundle 'surround.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'altercation/vim-colors-solarized'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
"Bundle 'bling/vim-airline'
"Bundle 'bling/vim-bufferline'
Bundle 'Lokaltog/powerline'
Bundle 'scrooloose/syntastic'
Bundle 'taglist.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'travitch/hasksyn'
Bundle 'moll/vim-node'
Bundle 'junegunn/vim-easy-align'
Bundle 'vim-scripts/surrparen'

filetype plugin indent on

" Create necessary directories
if !isdirectory("~/.vim/swap")
    call mkdir("~/.vim/swap", "p")
endif

if !isdirectory("~/.vim/backup")
    call mkdir("~/.vim/backup", "p")
endif

if !isdirectory("~/.vim/tags")
    call mkdir("~/.vim/tags", "p")
endif
