" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

nnoremap !      <Esc>:!
nnoremap b      <Esc>:b
nnoremap <Space>    :
nnoremap <leader>r  :!bash %<CR>

inoremap <Space><Space>     <Esc>:noh<cr>:w<cr>
imap     jk                 <Esc>:noh<cr> 
imap     kj                 <Esc>:noh<cr>

" FuGITive keybindings for vim
nmap <leader>gs :Gstatus<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>ga :Gwrite<cr>
nmap <leader>gl :Glog<cr>
nmap <leader>gd :Gdiff<cr>

" Quick <Esc> alternative; also clears search hilight
imap jj <Esc>:noh<CR>j
imap kk <Esc>:noh<CR>k
"imap ll <Esc>:noh<CR>$
imap hh <Esc>:noh<CR>^

imap ;; <Esc>A;
nnoremap ;; A;<Esc>

" Sudo write (,W)
noremap <leader>W :w !sudo tee %<CR>

" Do you know how often a comma and a space
" occur in the english language?
" inoremap <Leader><Space> <Esc>: 

"" vim specific shortcuts
nnoremap <Leader>v :e $MYVIMRC<CR>

" Window creation. vert splits only for me
nnoremap % :vsp<CR>
nnoremap " :sp<CR>

"" Save shortcuts
 " \w for save, \wq for savequit
nnoremap <Leader>w <Esc>:w!<CR>
nnoremap        ww <Esc>:wa!<cr>;

inoremap <Leader>w <Esc>:w!<CR>a
inoremap        ww <Esc>:wa!<CR>a

" <Leader>wq writes/closes all
nnoremap <Leader>wq <Esc>:wq!<CR>
inoremap <Leader>wq <Esc>:wq!<CR>

""  Sometimes a nigga's gotta quit
nnoremap <Leader>q      :qa!<CR>
nnoremap <Leader>Q      :qa!<CR>
inoremap qq        <Esc>:qa!<CR>
nnoremap QQ        <Esc>:qa!<CR>

" quicksaves and exits insert mode while clearing hilights
nnoremap <Leader><Leader>      :noh<CR>:w<CR>
inoremap <Leader><Leader> <Esc>:noh<CR>:w<CR>

" Sick and tired of that typo
command! W w
command! Q q

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

" Edit makefile
nnoremap <Leader>m :edit Makefile

" Reload configuration
nnoremap <Leader>r :source %<CR>
nnoremap        rr :source %<CR>

" Worth keeping
" nnoremap <F5>      :make<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>


" Easy align
vnoremap <silent> <Enter> :EasyAlign<Enter>

"Tagbar shortcut
nmap <F8> :TagbarToggle<CR>
