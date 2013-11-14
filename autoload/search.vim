let g:ackprg = 'ag --nogroup --nocolor --column -S'
let g:SearchDir = $PWD

function! search#Search ()
    echom "Searching in " . g:SearchDir . ", set g:SearchDir to change this."
    exe ':Ag ' . input("search> ") . ' ' . g:SearchDir
endfunction
