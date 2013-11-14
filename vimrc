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

" WM for vim
" Bundle 'spolu/dwm.vim'

" Colourschemes
Bundle 'nanotech/jellybeans.vim'
Bundle 'itchyny/landscape.vim'
Bundle 'tomasr/molokai'

" Aesthetic lower bar
Bundle 'bling/vim-airline'

" git diffs in the gutter (left side)
Bundle 'airblade/vim-gitgutter'

" syntax checking
Bundle 'scrooloose/syntastic'

" python virtualenv support
Bundle 'jmcantrell/vim-virtualenv'

" bufferline
Bundle 'bling/vim-bufferline'

" post gists from within vim, interact with github issues
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'tpope/vim-fugitive'
Bundle 'mklabs/vim-issues'

" unite, i.e. mru and buf search
Bundle 'kien/ctrlp.vim'

" completion
Bundle 'davidhalter/jedi-vim'

" supertab
Bundle 'ervandew/supertab'
Bundle 'pyflakes'

" ======================================================================== 
" ======================================================================== 

filetype plugin indent on

" Create necessary directories
call util#EnsureDirExists($HOME . '/.vim/swap')
call util#EnsureDirExists($HOME . '/.vim/tags')
call util#EnsureDirExists($HOME . '/.vim/undo')
call util#EnsureDirExists($HOME . '/.vim/backup')


" == Footnotes =========================================================== 
" ======================================================================== 
"
"   - [footnote-one] : Powerline uses special fonts, I use
"                        - https://github.com/Lokaltog/powerline-fonts
