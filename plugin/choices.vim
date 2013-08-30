" Compat mode is for losers
set nocompatible 

" Loads filetype defs from .vim/ftplugin/*.vim
filetype plugin indent on

" Comma is pretty common these days for <Leader>
let mapleader = ","

" Shorten the shortcut timeout a bit
set timeout timeoutlen=500 ttimeoutlen=500

" Keeps the cursor in view
set scrolloff=10

" The only legit choice
set encoding=utf-8

" fix tab menu
set wildmenu
set wildmode=longest,list

set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp

" Set statements
set autoread  
set showmatch
set wrapmargin=8
set cursorline
set noerrorbells
set title
set ttyfast
set number
set ruler

" let buffers have unsaved changes
set hidden

set cmdheight=2

" search opts
set hlsearch
set ignorecase
set showmatch

" indent properly
set smartindent
set autoindent
set smarttab

" tab properly
set tabstop=4
set shiftwidth=2
set expandtab

" skip backup and swap files since we live life balls to the wall
set nobackup
set noswapfile

" TODO :: why is this still here?
" fuckin swap files
" set directory=/tmp 

" Window split options
set splitbelow
set splitright

" skip startup message
set shortmess+=I

" various shows
set showmode
set showcmd

" toggle paste
set pastetoggle=<Leader>p

" Store viminfo under scm
set viminfo+=n~/.vim/viminfo " ~useless~
