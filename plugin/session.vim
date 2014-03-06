fun! SaveSession () 
    if exists("g:session") " && iswritable(g:session)
        exec "mksession! " . g:session
    endif
endfun

fun! LoadSession () 
    if filereadable( g:session )
        exec "source " . g:session
    endif
endfun

" TODO: make this shit actually work, it sooo doesn't atm
" augroup session
"     au!
"     autocmd VimLeave * call SaveSession()
"     autocmd VimEnter * call LoadSession()
" augroup end
