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
" -------------------------- 

Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'
Bundle 'tpope/vim-fugitive'
Bundle 'Raimondi/delimitMate'
Bundle 'altercation/vim-colors-solarized'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'Lokaltog/powerline'
Bundle 'scrooloose/syntastic'
Bundle 'taglist.vim'
Bundle 'travitch/hasksyn'
Bundle 'moll/vim-node'
Bundle 'junegunn/vim-easy-align'
Bundle 'vim-scripts/surrparen'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Valloric/YouCompleteMe'
Bundle 'majutsushi/tagbar'

"Bundle 'scrooloose/nerdtree'

"Bundle 'Shougo/neocomplcache'
"Bundle 'bling/vim-airline'
"Bundle 'surround.vim'
"Bundle 'bling/vim-bufferline'

" -------------------------- 

filetype plugin indent on

" Create necessary directories
call util#EnsureDirExists($HOME . '/.vim/swap')
call util#EnsureDirExists($HOME . '/.vim/tags')
call util#EnsureDirExists($HOME . '/.vim/undo')
call util#EnsureDirExists($HOME . '/.vim/backup')

" Close nerd
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
