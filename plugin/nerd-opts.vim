let NERDTreeShowBookmarks=1

augroup LoadNERD
  autocmd! 
  autocmd vimenter * if !argc() | NERDTreeCWD | wincmd p | endif
augroup END

