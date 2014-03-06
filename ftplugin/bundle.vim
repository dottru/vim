if exists("g:loaded_bundle_filetype")
    finish
endif

let g:loaded_bundle_filetype=1
let s:save_cpo = &cpo
set cpo&vim

function! OnBundleWrite()
    source $MYVIMRC
    BundleInstall
    echom "Updated bundles."
    qall
endfunction

augroup bundle
    au!
    autocmd BufWritePost *.vim call OnBundleWrite() "<cr>
augroup END

set syntax=vim

let &cpo = s:save_cpo

echom "One long message to kill all the energy."
