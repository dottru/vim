"" VIM CONFIGS (C) DOTTRU.IO 2013
" = = = = = = = = = = = = = = = =

" == Vundle options=======================================================
" ======================================================================== 

set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" == BUNDLES ============================================================= 
" ======================================================================== 

" See footnote [footnote-one]

" WM for vim TODO: learn how 2 this
" Bundle 'spolu/dwm.vim'

" Colourschemes
" Bundle 'nanotech/jellybeans.vim'
" Bundle 'itchyny/landscape.vim'
" Bundle 'tomasr/molokai'
" 
" " Aesthetic lower bar
" Bundle 'bling/vim-airline'
" 
" " git diffs in the gutter (left side)
" Bundle 'airblade/vim-gitgutter'
" 
" syntax checking
" Bundle 'scrooloose/syntastic'

" python virtualenv support
"Bundle 'jmcantrell/vim-virtualenv'

" " bufferline
" Bundle 'bling/vim-bufferline'
" 
" " post gists from within vim, interact with github issues
" Bundle 'mattn/webapi-vim'
" Bundle 'mattn/gist-vim'
" Bundle 'tpope/vim-fugitive'
" Bundle 'mklabs/vim-issues'
" 
" " unite, i.e. mru and buf search
" Bundle 'kien/ctrlp.vim'
" 
" " python completion
" Bundle 'davidhalter/jedi-vim'
" 
" " supertab
" " Bundle 'ervandew/supertab'
" 
" " Auto close ( [ " ' etcetera 
" Bundle 'jiangmiao/auto-pairs'
" 
" " like ack/grep
" Bundle 'ggreer/the_silver_searcher'
" Bundle 'rking/ag.vim'
" 
" Bundle 'Shougo/neosnippet'
Bundle 'Valloric/YouCompleteMe'

" ======================================================================== 
" ======================================================================== 

filetype plugin indent on

" Create necessary directories
call util#EnsureDirExists($HOME . '/.vim/swap')
call util#EnsureDirExists($HOME . '/.vim/tags')
call util#EnsureDirExists($HOME . '/.vim/undo')

" == Footnotes =========================================================== 
" ======================================================================== 
"
"   - [footnote-one] : Powerline uses special fonts, I use
"                        - https://github.com/Lokaltog/powerline-fonts
