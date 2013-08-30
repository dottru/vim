" Auto commits the gitignore
autocmd BufWritePost  .gitignore execute '!git add % && git commit -m "%";'
