" =======================
"    MACRO FUN SANDBOX
" =======================

command! Ma   :marks s,e,'<,'>
command! Re   :registers x,n
command! Ev   :exec 'normal! @"'

nnoremap <Leader>m    :Ma<cr>
nnoremap <Leader>r    :Re<cr>
nnoremap <Leader>e    :Ev<cr>


" yank block into x
" yank second word of line-0 into "n

" 
" jump to 's select lines until 'e
" yank into "x
" go to start of 's jump to tagname
" yank into "n
"       'sV'e"xy's^/ lv$"ny
"   
" Yank range into x.
" jump toe's, jump fw 2 words
" Yank word into "n
"
"       :'<'s,'e>"xy'sw2"nyw
"
" Macro takes content from 's to 'e execs it
" and starts a func call for testing.
" @r

" Eval yanks the whole func into "x
" and the name into "n

