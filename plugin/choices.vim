scriptencoding utf-8

" Set vim directory var
let vimdir     = $HOME . '/.vim'

let &backupdir = vimdir . '/backup'
let &directory = vimdir . '/swap'
let &undodir   = vimdir . '/undo'
let &tags      = vimdir.'/tags,./tags'

 " Leader mappings
 let mapleader = ","         " Comma is pretty common these days for <Leader>
 let localmapleader = '\'    " Backslash for local leader
 
 let g:textwidth   = 90      " Text wrap width
 let &colorcolumn = g:textwidth
 let &textwidth    = g:textwidth
 
 set nocompatible            " nocompat sets LOADS of options
 
 set shortmess=at            " skip startup message / splash screen
 set showmode                " Show the current vim mode
 
 set splitbelow splitright    " Window split options
 set whichwrap=<,>,h,l       " Adjust which movements will wrap to nextline
 set autochdir               " Auto cd to dir of % (curr-file)
 
 set noerrorbells            " I hate beep-on-fuckup
 set visualbell t_vb=        " use a visual flash to alert
 
 set encoding=utf-8          " The only legit choice
 set laststatus=2            " Show statusline even when only one window is shown
 set backspace=2             " fixes backspace for iterm and osx cli/gui
 set autoindent              " indent lines automatically based on context
 set showcmd                 " shows cmd characters before executing
 set autoread autowrite      " Read and write buffers w/o intervention
 set nostartofline           " prevent cursor from jumping e'rywhar
 set number                  " View line numbers
 set hidden                  " let buffers have unsaved changes
 set ttyfast                 " option for fast terminals
 set scrolloff=10            " Keeps the cursor in view
 
 set ruler                   " Show cursor pos in status
 set cursorline cursorcolumn " Show visual ind. on cursor loc
 
 set notimeout ttimeout     " set shortcut combo timeout
 set timeoutlen=500         " basic timeout length in ms
 set ttimeoutlen=1000       " basic timeout length in ms
 
 set wildmenu                " Correct behaviour of autocomplete menu
 set wildmode=longest,list
 set wildignore+=*.a,*.o
 set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
 set wildignore+=.DS_Store,.git,.hg,.svn
 set wildignore+=*~,*.swp,*.tmp
 
 set showmatch               " Hilight matching bracket when cursor is over its mate
 set wrapmargin=0            " wrap text ${X} characters from edge, horrible setting
 set cmdheight=2             " 
 
 " search opts
 set incsearch hlsearch      " Incremental search / Hilight search
 set ignorecase              " Search ignores case
 
 set formatoptions=tcqr      " auto-wrap using textwidth
                             " wrap comments inserting leader
                             " fmt comments using gq
                             " auto-comment on enter in insert mode
 
 set cindent smartindent     " Perform intelligent indenting
 set smarttab expandtab      " Tabbing inserts based off of &expandtab
 
 let g:tabwidth   = 4        " Common tab width
 let &tabstop     = g:tabwidth
 let &softtabstop = g:tabwidth
 let &shiftwidth  = g:tabwidth
 
 set nobackup noswapfile
 set undofile undolevels=250 " enforces use of a history file, 250 deep
 
 " Store viminfo under scm
 " "register-lines 'marks :commands % buf list n~ file-name, / skip search
 set viminfo=\"128,'25,:256,%,n~$HOME/.vim/viminfo
 
 " Tagbar options
 let g:tagbar_autofocus   = 1
 let g:tagbar_autoclose   = 1
 let g:tagbar_autopreview = 0
 
 "ooter options
 let g:rooter_patterns = [ '.project' ]
 
 " bufferline options
 let g:bufferline_echo = 1
 
 " Statusline configuration
 set statusline=%<%f\                     " Filename
 set statusline+=%w%h%m%r                 " Options
 set statusline+=%{fugitive#statusline()} " Git Hotness
 set statusline+=\ [%{&ff}/%Y]            " filetype
 set statusline+=\ [%{getcwd()}]          " current dir
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*
 let g:syntastic_enable_signs=1
 set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
 
 " Control characters to show invisiburu shit like EOL \s or tabs, etc
set list
set listchars+=tab:>-,trail:-,precedes:<,extends:>
