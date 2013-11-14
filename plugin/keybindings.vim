"" VIM KEYBOARD SHORTCUTS (C) DOTTRU.IO 2013
" = = = = = = = = = = = = = = = = = = = = = =

" == Window size/position/split===========================================
" ======================================================================== 

" Grows or shrinks a window. (MaxiMise, MiniMise)
" nnoremap MM     <C-w>10+
" nnoremap mm     <C-w>10-
nnoremap MM :call util#WindowGrow()<cr>
nnoremap mm :call util#WindowShrink()<cr>

" Command definitions
command! BufSelect     :CtrlPBuffer
command! FileSelect    :CtrlP
command! DirSelect     :call util#DirSel()
command! MRUSelect     :CtrlPMRU

" f5, ls, or <Leader>b
nnoremap <F5>           :CtrlPMRU<cr>
nnoremap  ls            :BufSelect<cr>
nnoremap <Leader>d      :DirSelect<cr>
nnoremap <Leader>b      :BufSelect<cr>
inoremap <Leader>b      <Esc>:BufSelect<cr>
nnoremap <Leader>f      :FileSelect<cr>
nnoremap <Leader>rf     :MRUSelect<cr>
nnoremap <C-p>          :CtrlPMixed<cr>

" space to enter a cmd
nnoremap <Space>    :

" rs to re-select last block
nnoremap rs          gv

" movement in insert mode that also exits to normal
" mode and clears search results
inoremap jj <Esc>:call util#Clear("j")<cr>
inoremap kk <Esc>:call util#Clear("k")<cr>

" Double ; appends one to the current line
inoremap ;; <Esc>A;
nnoremap ;; A;<Esc>

" write as root
nnoremap WW :call util#SudoWrite()<cr>
nnoremap ww :w<cr>
inoremap ww <Esc>:w<cr>:echo @% . " saved"<cr>

" vv to edit .vimrc
nnoremap <Leader>v <Esc>:echo "This has been remapped to vv, have a good day."<cr>
nnoremap vv :e $MYVIMRC<cr>
nnoremap VV :source ~/.vim/vimrc<cr>

" rage quit
inoremap qq        <Esc>:qa!<cr>
nnoremap QQ        <Esc>:qa!<cr>

" Sick and tired of that typo
command! W 

command! Q q

" <Leader>c closes buffer :: <Leader>C forces close
nnoremap <Leader>c  :echo "This has been remapped to cc, have a good day."<cr>
nnoremap cc         :bd<cr>

" Buffer navigation
nnoremap b1 :b1<cr>
nnoremap b2 :b2<cr>
nnoremap b3 :b3<cr>
nnoremap b4 :b4<cr>
nnoremap b5 :b5<cr>
nnoremap b6 :b6<cr>
nnoremap b7 :b7<cr>
nnoremap b8 :b8<cr>
nnoremap b9 :b9<cr>
nnoremap b0 :b10<cr>

"" Convenience shortcuts. C-hjkl for movement 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap <C-h> <Esc><C-w>h
inoremap <C-j> <Esc><C-w>j
inoremap <C-k> <Esc><C-w>k
inoremap <C-l> <Esc><C-w>l

" Reload configuration
nnoremap <Leader>r :echo "Reload the configuration you are currenty editing with rr."<cr>
nnoremap        rr :source %<cr>


" Experimenting with this
vnoremap jk                 <Esc>:call util#Save()<cr>
vnoremap kj                 <Esc>:call util#Save()<cr>
inoremap jk                 <Esc>:call util#Save()<cr>
inoremap kj                 <Esc>:call util#Save()<cr>

" Search
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
nnoremap <C-f>      :call search#Search()<cr>
"" VIM KEYBOARD SHORTCUTS (C) DOTTRU.IO 2013
" = = = = = = = = = = = = = = = = = = = = = =

" == Window size/position/split===========================================
" ======================================================================== 

" Grows or shrinks a window. (MaxiMise, MiniMise)
" nnoremap MM     <C-w>10+
" nnoremap mm     <C-w>10-
nnoremap MM :call util#WindowGrowHor()<cr>
nnoremap mm :call util#WindowShrinkHor()<cr>
nnoremap <Leader>MM     :call util#WindowGrowVert()<cr>
nnoremap <Leader>mm     :call util#WindowShrinkVert()<cr>


" f5 or ls
nnoremap <F5>           :call util#BufferSelect()<cr>
nnoremap <Leader>b      :call util#BufferSelect()<cr>
inoremap <Leader>b      <Esc>:call util#BufferSelect()<cr>


" space to enter a cmd
nnoremap <Space>    :

" rs to re-select last block
nnoremap rs          gv

" movement in insert mode that also exits to normal
" mode and clears search results
inoremap jj <Esc>:call util#Clear("j")<cr>
inoremap kk <Esc>:call util#Clear("k")<cr>

" Double ; appends one to the current line
inoremap ;; <Esc>A;
nnoremap ;; A;<Esc>

" write as root
nnoremap WW :call util#SudoWrite()<cr>
nnoremap ww :w<cr>:echo "If that fails, try sudo write with WW."<cr>
inoremap ww <Esc>:w<cr>:echo @% . " saved"<cr>

" vv to edit .vimrc
nnoremap <Leader>v <Esc>:echo "This has been remapped to vv, have a good day."<cr>
nnoremap vv :e $MYVIMRC<cr>
nnoremap VV :source ~/.vim/vimrc<cr>

" rage quit
inoremap qq        <Esc>:qa!<cr>
nnoremap QQ        <Esc>:qa!<cr>

" Sick and tired of that typo
command! W w
command! Q q

" <Leader>c closes buffer :: <Leader>C forces close
nnoremap <Leader>c  :echo "This has been remapped to cc, have a good day."<cr>
nnoremap cc         :bd<cr>

" Buffer navigation
nnoremap <Leader>1 :b1<cr>
nnoremap <Leader>2 :b2<cr>
nnoremap <Leader>3 :b3<cr>
nnoremap <Leader>4 :b4<cr>
nnoremap <Leader>5 :b5<cr>
nnoremap <Leader>6 :b6<cr>
nnoremap <Leader>7 :b7<cr>
nnoremap <Leader>8 :b8<cr>
nnoremap <Leader>9 :b9<cr>
nnoremap <Leader>0 :b10<cr>

"" Convenience shortcuts. C-hjkl for movement 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap <C-h> <Esc><C-w>h
inoremap <C-j> <Esc><C-w>j
inoremap <C-k> <Esc><C-w>k
inoremap <C-l> <Esc><C-w>l

" Reload configuration
nnoremap <Leader>r :echo "Reload the configuration you are currenty editing with rr."<cr>
nnoremap        rr :source %<cr>


" Experimenting with this
vnoremap jk                 <Esc>:call util#Save()<cr>
vnoremap kj                 <Esc>:call util#Save()<cr>
inoremap jk                 <Esc>:call util#Save()<cr>
inoremap kj                 <Esc>:call util#Save()<cr>

" Search
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
nnoremap <C-f>      :call search#Search()<cr>
nnoremap cr         :call search#CloseSearch()<cr>

" Easy align
vnoremap <silent> <Enter> :EasyAlign<Enter>

nnoremap cr         :call search#CloseSearch()<cr>

" Easy align
vnoremap <silent> <Enter> :EasyAlign<Enter>

" Splits, sv for |... sh for ---
nnoremap sv      :vsp<cr>
nnoremap sh      :sp<cr>

" Sane window resizing
source ~/.vim/autoload/win.vim
nnoremap <Leader><Leader>h    :10MinH<cr>
nnoremap <Leader><Leader>k    :10MinV<cr>
nnoremap <Leader><Leader>l    :10MaxH<cr>
nnoremap <Leader><Leader>j    :10MaxV<cr>

" Clear hilight with esc

" on escape remove highlight
nnoremap <silent> <ESC> :nohlsearch<cr>

nnoremap <space>s :Unite -quick-match buffer<cr>
