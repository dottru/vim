let g:SearchDir = $PWD
let g:SearchOpen = 0

function! SearchDir ()
    echom "Current search dir is: " . g:SearchDir
    if input("Change this? y/N :: ", "", "dir") =~ '^[Yy]$'
        let g:SearchDir = input("Enter new search path: ")
    endif
    echom "Search path changed to " . g:SearchDir 
endfunction

function! Search ()
    if g:SearchOpen == 1
        exe ":cclose"
        echom "Search was open, closed it."
    endif

    echom "Searching in " . g:SearchDir . ", set g:SearchDir to change this."

    let b:cmd = ":vimgrep /" . input("Term: ") . "/gj " . g:SearchDir . "/**/*"
    echom "Running:  " . b:cmd
    normal b:cmd
    "exe ":copen"
    let g:SearchOpen = 1
    "echom "Use cr to close the results window."
endfunction

function! SearchResults ()
    exe ':copen'
    let g:SearchOpen = 1
endfunction

function! CloseSearch ()
    exe ':cclose'
    let g:SearchOpen = 0
endfunction
