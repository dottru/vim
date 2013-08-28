"""
""" dottru/dotfiles vimrc
"""

" Load pathogen
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

" map leader is nice
let mapleader = ","

"" show line numbers, indent like a decent citizen, tabstop of 4
set number

"" let buffers have unsaved changes
set hidden

"" indent properly
set smartindent
set autoindent

"" tab properly
set ts=4
set expandtab

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

nnoremap <Leader><Leader> :w<CR>
inoremap <Leader><Leader> <Esc>:w<CR>

nnoremap <Leader>c          :close<CR>
inoremap <Leader>c     <Esc>:close<CR>

"" Buffer nav. \b to list, \B to goto
nnoremap <Leader>b          :BufExplorerVerticalSplit<CR>
inoremap <Leader>b     <Esc>:BufExplorerVerticalSplit<CR>

" Quick <esc> alternative
imap jj <Esc>

" Shorten the shortcut timeout a bit
set timeout timeoutlen=500 ttimeoutlen=500

"" Appearance 
colorscheme solarized 
set background=dark
syntax on
filetype plugin indent on

" Disable the fucking netrw files everywhere
let g:netrw_home=$HOME

" GIT SHORTCUTS
nnoremap <Leader><Leader>s     :!git status<CR>
nnoremap <Leader><Leader>a     :!git add %<CR>
nnoremap <Leader><Leader>c     :!git commit -a<CR>

" \h shortcuts to :help 
nnoremap <Leader>h               :help 
inoremap <Leader>h          <Esc>:help 

" Tab completion for tards
inoremap <Tab>      <C-p>

" \e == Fie explorer
nnoremap <Leader>e      :Ex<CR>
