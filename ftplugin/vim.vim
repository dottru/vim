" Reload changes to .vimrc automatically
augroup reload
  autocmd!
  
  " Needed?
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
  
augroup end

nnoremap <Leader>r :source %<CR>
nnoremap <F5> :source %<CR>
