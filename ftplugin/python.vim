" Map ^r to :python %
nnoremap <C-r>      <Esc>:w<cr>:!python %<CR>;;;

let g:shell = "ipython";
map <F5> :call VimuxRunCommand("clear; inve.sh python " . bufname("%"))<cr>
map <F6> :call VimuxCloseRunner()<cr>
