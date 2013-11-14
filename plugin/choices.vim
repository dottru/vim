" Comma is pretty common these days for <Leader>
let mapleader = ","

" Shorten the shortcut timeout a bit
set timeout timeoutlen=500 ttimeoutlen=50

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
set wildignore+=~/.vim/undo/*

" Set statements
set autoread  
set showmatch
set wrapmargin=8
set cursorline
set cursorcolumn

set title
set ttyfast
set number
set ruler

set nostartofline

" Use a visual bell     "| set noerrorbells
set visualbell
set t_vb=

" let buffers have unsaved changes
set hidden

set cmdheight=2

" search opts
set incsearch
set hlsearch
set ignorecase
set showmatch

" indent properly
set smartindent
set autoindent
set smarttab

" tab properly
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" skip backup and swap files since we live life balls to the wall
"set backupdir=~/.vim/backup
set noswapfile
"set directory=~/.vim/swap
set undofile
set undodir=~/.vim/undo

" Correct backspace behaviour
set backspace=indent,eol,start

" Window split options
set splitbelow
set splitright

" skip startup message / splash screen
set shortmess+=I

" various shows
set showmode
set showcmd

" Ask to save on hot exit
" set confirm

" toggle paste
set pastetoggle=<Leader>p

" Store viminfo under vimdir
set viminfo='25,\"128,:128,%,n~/.vim/viminfo

" status line
set laststatus=2

" Auto-write
set autowrite
set autowriteall

" Tags file
set tagrelative
set tags=tags,~/.vim/tags/tags
