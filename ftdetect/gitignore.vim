if exists("did_load_filetypes")
  finish
endif

au BufRead,BufNewFile .gitignore 		set filetype=gitignore
