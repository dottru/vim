" == Window methods=======================================================
" ======================================================================== 

function! win#ResizeHoriz (...) 
    exe ':resize ' . a:1
    echom "Horiz " . a:1
endfunction
"command! -nargs=1 WinH :call win#ResizeHoriz(<q-args>)
command! -count MaxH :call win#ResizeHoriz('+'.<count>)
command! -count MinH :call win#ResizeHoriz('-'.<count>)


function! win#ResizeVert (...)
    exe ':vertical resize ' . a:1
    echom "Vert " . a:1
endfunction
command! -count MaxV :call win#ResizeVert('+'.<count>)
command! -count MinV :call win#ResizeVert('-'.<count>)
