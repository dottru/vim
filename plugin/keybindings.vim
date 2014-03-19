" vim keyboard shortcuts
" ----------------------

" INDEX
" =====
"   1. Normal mode - [normal-mode]
"   2. Insert mode - [insert-mode]
"   3. Visual mode - [visual-mode]

" =========================
" NORMAL MODE *normal-mode*
" =========================

" -- COMMANDS --
command!          Grow       :echom "Use 10gh to expand 10 cols. 5gv to grow 5 rows vert."
command!          Shink      :echom "Use 10sh to shrink 10 cols. 5gv to shrink 5 rows vert."
command!          Align      :echom "Select a block visually and press
                                     "   <Enter><Space> to align on spaces 
                                     "   <Enter>: to align on colons"

                                     
command! -nargs=1 OpenBrowser :!/usr/bin/open -a Google\ Chrome <args><cr>


" -- COMMON ERROR --
" Kill hilights $$ Shortcuts to Write
command! Write     :noh<Bar>:w! %<cr>
"command! W Write
command! Q qall
"nnoremap <cr>      :noh<cr>
"nnoremap ww         :Write<cr>
"inoremap ww         <C-o>:Write<cr>

" -- PRESERVE RE-SELECT
nmap     rs gv

" -- RESIZING --
nnoremap gh <C-w>>
nnoremap gv <C-w>+
nnoremap sh <C-w><
nnoremap sv <C-w>-

" -- ALIGN --
vnoremap <silent> <Enter> :EasyAlign<Enter>

" -- CONVENIENCE COMMAND
nnoremap 11       !!
nnoremap <Space>  :noh<cr>:

" -- RE-SELECT --
nnoremap rs          gv

" -- SUDOWRITE --
command! Sudowrite :w !sudo tee > /dev/null %
nnoremap w!! :sudowrite<cr>

" -- OPEN $MYVIMRC --
nnoremap <Leader>v <Esc>:echo "This has been remapped to ve (edit), vv (vsp), and vs (horiz)."<cr>
nnoremap ve :e   $MYVIMRC<cr>
nnoremap vv :vsp $MYVIMRC<cr>

nnoremap vs :sp  $MYVIMRC<cr>

" -- RAGEQUIT --
inoremap qq        <C-o>:qa!<cr>
nnoremap QQ        <C-o>:qa!<cr>

" -- BUFFER CLOSE --
nnoremap bd                 :bd<cr>

" -- HELP --
inoremap <Leader>h          <Esc>:help 
nnoremap H                  :help 

"" Convenience shortcuts. C-hjkl for movement 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap <C-h> <C-w>h
inoremap <C-j> <C-w>j
inoremap <C-k> <C-w>k
inoremap <C-l> <C-w>l

inoremap JK  jk
inoremap KJ  kj

" It confuses my fingers for  to save and return while kj saves and escapes
inoremap jk  <C-o>:Write<cr>
inoremap kj  <Esc>:Write<cr>

" -- JUMPS --
nnoremap J   <C-d>
nnoremap K   <C-u>

" -- RECENT FILES --
" \r - recent
" \b - buffers
" \t - tabs
nnoremap <LocalLeader>r :MRU<cr>

" Toggle line nos
nnoremap <Leader>n :set number!

" Maximises window
nnoremap MM    :only<cr>

" Tab navigation
nnoremap <C-t>          :tabnew<cr>
nnoremap <C-p>          :tabprev<cr>
nnoremap <C-n>          :tabnext<cr>
inoremap <C-t>     <C-o>:tabnew<cr>
nnoremap <C-p>     <C-o>:tabprev<cr>
nnoremap <C-n>     <C-o>:tabnext<cr>


" Maximise win
nnoremap MM        :ZoomWin<cr>
nnoremap mm        MM

nnoremap ob        :OpenBrowser expand("%:p")<cr>

" TODO: insert a modeline to source this onwrite
