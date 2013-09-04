" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Quick <Esc> alternative; also clears search hilight
imap jj <Esc>:noh<CR>

" Sudo write (,W)
noremap <leader>W :w !sudo tee %<CR>

" <Space> to : mappings
nnoremap <Space>    :

" Do you know how often a comma and a space
" occur in the english language?
" inoremap <Leader><Space> <Esc>: 

"" vim specific shortcuts
nnoremap <Leader>v :e $MYVIMRC<CR>

" Window creation. vert splits only for me
nnoremap vv :vsp<CR>

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
nnoremap <Leader>q      :q!<CR>
inoremap QQ        <Esc>:q!<CR>

" quicksaves and exits insert mode while clearing hilights
nnoremap <Leader><Leader> :noh<CR>:w<CR>
inoremap <Leader><Leader> <Esc>:noh<CR>:w<CR>

" Quick check the filetype
nnoremap <Leader><Leader>f :set ft?<CR>
nnoremap <Leader><Leader>n :scriptnames<CR>

" Sick and tired of that typo
command! W w
command! Q q

" GIT SHORTCUTS
nnoremap <Leader><Leader>s     :!git status<CR>
nnoremap <Leader><Leader>c     :!git a %; git commit -m %<CR>
nnoremap <Leader><Leader>C     :!git commit -A -m %<CR>

" <Leader>c closes buffer :: <Leader>C forces close
nnoremap <Leader>c          :bd<CR>
inoremap <Leader>c     <Esc>:bd<CR>
nnoremap <Leader>C          :bd!<CR>
inoremap <Leader>C     <Esc>:bd!<CR>

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

" just type b1<Enter> to go to buf 1
nnoremap b         :b

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

" Edit makefile
nnoremap <Leader>m :edit Makefile

" src %
nnoremap <Leader>r :source %<CR>

nnoremap <F5>      :make<CR>