"""
""" dottru/dotfiles vimrc
"""

# Load pathogen
execute pathogen#infect()

"" show line numbers, indent like a decent citizen, tabstop of 4
set number

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
nnoremap <Leader>r :source ~/.vimrc<CR>:echo ".vimrc reloaded"<CR>

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

""  Map \s to save in normal
 "  and insert mode
nnoremap <Leader>s <Esc>:w<CR>
inoremap <Leader>s <Esc>:w<CR>a

""  Sometimes a nigga's gotta quit
nnoremap <Leader>q      :q!
inoremap QQ        <Esc>:q!

nnoremap <Leader><Leader> :w<CR>
inoremap <Leader><Leader> <Esc>:w<CR>a

"" Appearance 
colorscheme solarized 
set background=dark
syntax on
filetype plugin indent on
