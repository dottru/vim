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
filetype plugin indent on

" Disable the fucking netrw files everywhere
let g:netrw_home=$HOME

" GIT SHORTCUTS
nnoremap <Leader><Leader>s     :!git status<CR>
nnoremap <Leader><Leader>a     :!git add %<CR>

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

" Open nerd automatically
autocmd vimenter * if !argc() | NERDTree | endif

" Close nerd if it's all that's left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" CtrlP
nnoremap <C-p> :CtrlPMRU<CR>
inoremap <C-p> <Esc>:CtrlPMRU<CR>

" Run in
nnoremap <Leader>rb :!bash %<CR>

" Powerline settings
set encoding=utf-8
let g:airline_powerline_fonts=1

" Bind F9 to show `pwd`
map <F9> :!pwd<CR>

" Binds F10 to git commit -a
function! Commit()
        :!git commit -a; git push origin master
endfunction
map <F10> :call Commit()<CR>
imap <F10> <C-O>:call Commit()<CR>

" Added an auto-commit to buffer saves
autocmd BufWritePost * execute '!git add % && git commit -m %'
