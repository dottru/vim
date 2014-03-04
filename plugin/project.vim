function! FindRoot ()
    let pf = findfile('.project', '.;')
    if ( pf =~ "^$" )
        " Never found a project file
    else
        let g:project_root_dir=pf
        echom "Found project root @ " . pf
    endif
endfunction
