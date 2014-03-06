" Tag settings
" TODO: add .project/tags to this
"set tagrelative
"set tags=./tags

" CTAGS AUTO TAGGERS - TODO: re-enable ctags on bufwrite
" autocmd BufWritePost *
"       \ if filereadable('tags') |
"       \   call system('ctags -a '.expand('%')) |
"       \ endif 
" "autocmd * :Rooter

" Add the current file's directory to the path if not already present.
    " autocmd BufRead *
    " \     let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |
    " \     exec "set path+=".s:tempPath

" CTAGS AUTO TAGGERS
" autocmd BufWritePost *
"
"       \ if filereadable('tags') |
"       \   call system('ctags -a '.expand('%')) |
"       \ endif:
