" vim keyboard shortcuts
" ----------------------

" ------------------------------------------------------
"   || To navigate, put your cursor over the text inside
"   || brackets and press * to get there.
"
"   ||  You can retur with Control-O.
" ------------------------------------------------------


" INDEX
" =====
"   1. Normal mode - [normal-mode]
"   2. Insert mode - [insert-mode]
"   3. Visual mode - [visual-mode]




" NORMAL MODE *normal-mode*
" =========================

" 'Maximise' / 'Minimise' a window
map :resize     <Esc>:echo "Use MM to stretch a window or mm to shrink one. voila~"<cr>
nnoremap MM     <C-w>10+
nnoremap mm     <C-w>10-

" ! to start entering a shell cmd
nnoremap !      :!

" b to browse, ls to quick-switch
" nnoremap b      <Esc>:FufBuffer<cr> " This got annoying so goddamn fast.
nnoremap ls     :ls<cr>:b 
nnoremap bd     :bd<cr>

" space to enter a cmd
nnoremap <Space>    :noh<cr>:

" rs to re-select last block
nnoremap rs          gv

nnoremap tt :!ctags -a -R -f ~/.vim/tags/tags `pwd`<cr>

" Map ^r to :python %
" inoremap  <C-r> <Esc>:w<cr>:!python %<CR>
" nnoremap <silent> <C-r> <Esc>:w<cr>:!python %<CR>

" Search and replace method
function! SubCursor() range
    let s:cur = expand("<cword>")

    let curline = getline('.')
    call inputsave()
    let s:repl = input("Subst '".s:cur."' for :: ")
    call inputrestore()

    execute a:firstline . "," . a:lastline . 's/' . s:cur . '/' . s:repl . '/g'
endfunction

nnoremap <silent> <C-r> :call SubCursor()<cr>

" movement in insert mode that also exits to normal
" mode and clears search results
imap jj <Esc>:call util#Clear("j")<cr>
imap kk <Esc>:call util#Clear("k")<cr>

nnoremap <cr> :noh<cr><cr>

" Had to remap due to accidents 
imap LL <Esc>:call util#Clear("$")<cr>

" Double ; appends one to the current line
imap ;; <Esc>A;
nnoremap ;; A;<Esc>

" Sudo write with WW
nnoremap WW :call util#SudoWrite()<cr>
nnoremap ww :call util#Save()<cr>

" vv to edit .vimrc
nnoremap <Leader>v <Esc>:echo "This has been remapped to vv, have a good day."<cr>
nnoremap vv :e $MYVIMRC<CR>

" insta quit
inoremap qq        <Esc>:qa!<CR>
nnoremap QQ        <Esc>:qa!<CR>

" Sick and tired of that typo
command! W w
command! Q q

" <Leader>c closes buffer :: <Leader>C forces close
nnoremap <Leader>c          :bd<CR>
inoremap <Leader>c     <Esc>:bd<CR>

" Got annoying real fast.
"nnoremap K                  :bd!<CR>
"inoremap K             <Esc>:bd!<CR>

" \h shortcuts to :help 
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

"" Convenience shortcuts. C-hjkl for movement 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap <C-h> <C-w>h
inoremap <C-j> <C-w>j
inoremap <C-k> <C-w>k
inoremap <C-l> <C-w>l

" Reload configuration
"nnoremap <Leader>r :source %<CR>
nnoremap        rr :call util#Source(expand("%"))<CR>

" Worth keeping
nnoremap <F5> :buffers<CR>:buffer<Space>


" Easy align
vnoremap <silent> <Enter> :EasyAlign<Enter>

" Experimenting with this
vnoremap jk                 <Esc>
vnoremap kj                 <Esc>

inoremap jk                 <Esc>:call util#Save()<cr>
inoremap kj                 <Esc>:call util#Save()<cr>

nnoremap <Leader>r :MRU<cr>
