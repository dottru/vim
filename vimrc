"""
""" dottru/dotfiles vimrc
"""

set nocompatible

" Load pathogen
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

set showmatch

let mapleader = ","

" Remap :W to :w
command! W w
command! Q q

set autoread  

"nnoremap <C-n> :bnext<CR>
"nnoremap <C-p> :bprevious<CR>

set wrapmargin=8

set cursorline

set noerrorbells

set splitbelow
set splitright

set title

set ttyfast

" Sudo write (,W)
noremap <leader>W :w !sudo tee %<CR>


" Reload changes to .vimrc automatically
autocmd BufWritePost  ~/.vimrc source ~/.vimrc
autocmd BufWritePost  .gitignore execute '!git add % && git commit -a -m %;'

"" show line numbers, indent like a decent citizen, tabstop of 4
set number

"" skip backup and swap files since we live life balls to the wall
set nobackup
set noswapfile
set nowb

"" skip startup message
set shortmess+=I

"" show mode
set showmode

"" toggle paste
set pastetoggle=<Leader>p

"" let buffers have unsaved changes
set hidden

"" indent properly
set smartindent
set autoindent
set smarttab

"" tab properly
set tabstop=2
set shiftwidth=2
set expandtab

" show cmds as you type em
set showcmd

" search opts
set hlsearch
set ignorecase

"" <Space> to : mappings
nnoremap <Space>         :
nnoremap <Leader><Space> :
inoremap <Leader><Space> <Esc>:w<CR>:

"" vim specific shortcuts
 " \v to :w & :e $vimrc
nnoremap <Leader>v :e ~/.vimrc<CR>

 " \r to reload $vimrc
nnoremap <Leader>r :source ~/.vimrc<CR>:echo "Reloaded."<CR>

"" Convenience shortcuts. C-hjkl for movement 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap <C-h> <C-w>h
inoremap <C-j> <C-w>j
inoremap <C-k> <C-w>k
inoremap <C-l> <C-w>l

" NERDTree toggle
nnoremap <Leader>e :NERDTreeToggle<CR>

"" Save shortcuts
 " \w for save, \wq for savequit
nnoremap <Leader>w <Esc>:w<CR>
inoremap <Leader>w <Esc>:w<CR>a

" <Leader>wq writes/closes all
nnoremap <Leader>wq <Esc>:wq!<CR>
inoremap <Leader>wq <Esc>:wq!<CR>

""  Map \s to save in normal
 "  and insert mode
nnoremap <Leader>s <Esc>:w<CR>
inoremap <Leader>s <Esc>:w<CR>a

""  Sometimes a nigga's gotta quit
nnoremap <Leader>q      :q!
inoremap QQ        <Esc>:q!

" <Leader><Leader> just quicksaves and exits insert mode
nnoremap <Leader><Leader> :w<CR>
inoremap <Leader><Leader> <Esc>:w<CR>

" <Leader>c c-- closes buffer
nnoremap <Leader>c          :close<CR>
inoremap <Leader>c     <Esc>:close<CR>

" Quick <esc> alternative
imap jj <Esc>

" Shorten the shortcut timeout a bit
" If it's still too long, drop it down to 500
set timeout timeoutlen=700 ttimeoutlen=700

"" Appearance 
colorscheme solarized 
set background=dark
syntax on

filetype plugin on
filetype indent on

" Disable the fucking netrw files everywhere
let g:netrw_home=$HOME

" GIT SHORTCUTS
nnoremap <Leader><Leader>s     :!git status<CR>
nnoremap <Leader><Leader>a     :!git add %<CR>
nnoremap <Leader><Leader>c     :!git a %; git commit -a<CR>

" \h shortcuts to :help 
nnoremap <Leader>h               :help 
inoremap <Leader>h          <Esc>:help 

" Buffer navigation
nnoremap <Leader>1 :b1<CR>
nnoremap <Leader>2 :b2<CR>
nnoremap <Leader>3 :b3<CR>
nnoremap <Leader>4 :b4<CR>
nnoremap <Leader>5 :b5<CR>
nnoremap <Leader>6 :b6<CR>
nnoremap <Leader>7 :b7<CR>
nnoremap <Leader>8 :b8<CR>
nnoremap <Leader>9 :b9<CR>
nnoremap <Leader>0 :b10<CR>

" mini buf expl auto start
let g:miniBufExplAutoStart = 1

" let neocache start I guess
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1

" Open nerd automatically
autocmd vimenter * if !argc() | NERDTree | endif

" Close nerd if it's all that's left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" use ghc functionality for haskell files
au Bufenter *.hs compiler ghc

" CtrlP
nnoremap <C-p> :CtrlPMRU<CR>
inoremap <C-p> <Esc>:CtrlPMRU<CR>

" Run in
nnoremap <Leader>rb :!bash %<CR>

" Powerline settings
set encoding=utf-8
let g:airline_powerline_fonts=1

" Keep syntastic loc list open
let g:syntastic_always_populate_loc_list=1

" TODO :: install fugitive and make an f9/f10 shortcut for it

" fix tab menu
set wildmenu
set wildmode=longest,list

set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp

" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript

" ZSH
au BufRead,BufNewFile .zsh_rc,.functions,.commonrc set ft=zsh

" Fish
au BufRead,BufNewFile *.fish set ft=fish

set directory=/tmp " fuckin swap files

set showmatch

" hasksyn
" How many lines should be searched for context
let g:hasksyn_indent_search_backward = 100

" Should we try to de-indent after a return
let g:hasksyn_dedent_after_return = 1

" Should we try to de-indent after a catchall case in a case .. of
let g:hasksyn_dedent_after_catchall_case = 1
