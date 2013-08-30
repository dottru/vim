" Reload changes to .vimrc automatically
augroup reload
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup end
