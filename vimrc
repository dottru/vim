"" VIM CONFIGS (C) DOTTRU.IO 2013
 " = = = = = = = = = = = = = = = =

" ./setup.sh has some dependencies on dottru/dotfiles/lib/*.sh libs.
" Feel free to just ignore the setup.

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
Bundle 'junegunn/seoul256.vim'
"Bundle 'altercation/vim-colors-solarized'

Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'
Bundle 'tpope/vim-fugitive'
Bundle 'Raimondi/delimitMate'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/powerline'
Bundle 'scrooloose/syntastic'
Bundle 'taglist.vim'
Bundle 'junegunn/vim-easy-align'

" Was causing hella bugs
" Bundle 'Valloric/YouCompleteMe'
Bundle 'kien/ctrlp.vim'
Bundle 'cfurrow/vim-l9'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'sjl/vitality.vim'
Bundle 'kien/rainbow_parentheses.vim'


" 'Collaboration' plugins. They work very poorly.
"Bundle 'Floobits/floobits-vim'
"Bundle 'FredKSchott/CoVim'

"Bundle 'travitch/hasksyn'
"Bundle 'moll/vim-node'
"Bundle 'vim-scripts/surrparen'
"Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'majutsushi/tagbar'
"Bundle 'ervandew/supertab'
"Bundle 'scrooloose/nerdtree'

"Bundle 'Shougo/neocomplcache'      " replaced with YCM
"Bundle 'bling/vim-airline'         " dunno why I liked this
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
: autocmd VimEnter * wincmd p
