" Auto commits the gitignore
" TODO: Make an option for pushing
autocmd BufWritePost * execute '!git add % && git commit -m "%";'
