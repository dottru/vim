let g:vimdir       = expand('~')."/.vim"
let g:modfile      = g:vimdir . "/MODIFIED"
let g:bundledir    = g:vimdir . "/bundle"
let g:vundledir    = g:bundledir. "/vundle"

fun! RemoveBundles ()
    if isdirectory( g:bundledir )
        "echom "Deleting "  . g:bundledir
        execute "!rm -rf " . g:bundledir
    endif
endfun

fun! SetModified ()
    execute "!touch " . g:modfile
endfun

fun! RemoveModified ()
    execute "!rm -f " . g:modfile
endfun

fun! InitVundle ()
    if !exists('g:vinit')
        let g:vinit = 1

        "echom "Bundle dir is " . g:bundledir
        if !isdirectory( g:bundledir )
            "echom "Bundle dir doesn't exist. Creating."
            call mkdir( g:bundledir )
            lcd g:bundledir
            execute "!git clone " . s:vundle_uri . " " . g:vundle_uri
            call SetModified()
            "echom "Vundle cloned into " . g:vundledir
        endif

        exec "source " . g:vimdir . "/vundle.vim"
    endif
endfun

fun! UpdateBundles()
    if exists( g:modfile )
        call RemoveModified()
        exec "BundleInstall"
    endif
endfun

fun! BI()
    exec 'BundleInstall'
    exec 'qall'
endfun
command! Update call BI()

call InitVundle()
