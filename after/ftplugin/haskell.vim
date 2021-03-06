" use ghc functionality for haskell files
au Bufenter *.hs compiler ghc

" hasksyn
" How many lines should be searched for context
let g:hasksyn_indent_search_backward = 100

" Should we try to de-indent after a return
let g:hasksyn_dedent_after_return = 1

" Should we try to de-indent after a catchall case in a case .. of
let g:hasksyn_dedent_after_catchall_case = 1

function! MakeRun ( outn )
  make
  !./%:r -o outn
  echo outn has been generated
endfunction
