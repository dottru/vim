function! SetEvents()
    if exists( "g:project_root_dir" )
        let l:viewname = g:project_root_dir . '/view.vim'

        autocmd BufWinLeave ?* mkview!         " l:viewname
        autocmd BufWinEnter ?* silent loadview " l:viewname
    endif
endfunction

function! FindRoot ()
    let pf = findfile('.project', '.;')
    if ( pf =~ "^$" )
        " Never found a project file
    else
        let g:project_root_dir=pf
        echom "Found project root @ " . pf
    endif

    if exists( "g:project_root_dir" )
        autocmd VimEnter * call SetEvents()
    endif

endfunction

autocmd VimEnter ?* call FindRoot()
