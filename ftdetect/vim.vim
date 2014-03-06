if exists("did_load_filetypes")
  finish
endif

augroup ftdetect
    au!
    au BufRead,BufNewFile *.vim 		set filetype=vim
    au BufRead,BufNewFile .vimrc		set filetype=vim
augroup end
