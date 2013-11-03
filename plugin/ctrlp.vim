" CtrlP

" Set no max file limit
let g:ctrlp_max_files=0
" " Search from current directory instead of project root
let g:ctrlp_working_path_mode=0

" keybinds
nnoremap <C-p> :CtrlPMRU<CR>
inoremap <C-p> <Esc>:CtrlPMRU<CR>

nnoremap <Leader>d :CtrlP $HOME/dotfiles<CR>
