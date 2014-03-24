let g:vimdir       = expand("<sfile>:p:h")
let g:modfile      = g:vimdir    . "/MODIFIED"
let g:bundledir    = g:vimdir    . "/bundle"
let g:vundledir    = g:bundledir . "/vundle"
let s:vundle       = "https://github.com/gmarik/Vundle.vim"

" ////////////////////////////////////////////
" ////////////////////////////////////////////

fun! InitVundle ( ... )
    " Supply n(2) to delete bundle dir
    if a:0 >= 1 && a:000[0] == "2"
        call RemoveBundles()
    endif
    
    " Don't run more than once unless FORCED to
    if !exists('g:vinit') || g:vinit == 0 || a:0 > 0 && a:000[0] == 1
        exec "chdir " . g:vimdir

        if isdirectory('bundle')
            echom "BUNDLE EXISTS"
            finish
        else
            chdir $HOME/.vim/
            echom "mkdir .vim/bundle :: " . system("mkdir bundle")
            chdir ./bundle
            echom "clone vundle dir :: " .   system( "git clone " . s:vundle . " vundle" )
            chdir ./vundle

            let g:vinit = 1
        endif
    else
        echom "I don't see a need to install vundle right now."
    endif
endfun

" WIPE BUNDLES
fun! RemoveBundles ()
    echom "LS of .vim  b4 :: " . system("/bin/ls ~/.vim/bundle")

    let res = system( "/bin/rm -rf " . g:bundledir )
    echom "rm ".g:bundledir . " results: " . res
    echom "PWD " . getcwd()
    
    echom "LS of .vim  after :: " . system("/bin/ls ~/.vim/bundle")

    let g:vinit = 0
endfun

" SET MODIFIED
fun! SetModified ()
    echom "MODIFIED flag set."
    return system( "!touch " . g:modfile )
endfun

fun! RemoveModified ()
    echom "MODIFIED flag removed."
    return system(  "!rm -f " . g:modfile )
endfun


" BUNDLE UPDATE
fun! UpdateBundles( ... )

    " If called with, set modified flag so we reload
    if exists("a:0") && a:0 == 1
        call SetModified()
        echom "Supplied an arg."
    endif

    " If modflag is set, nuke budles and re-sync
    if filereadable( g:modfile )
        call RemoveModified()

        echom "Updating vundle packages."
        exec "source " . g:vimdir . "/vundle.vim"
        exec "BundleInstall"
        exec "qall"
    endif

endfun

fun! BI()
    exec 'BundleInstall'
    exec 'qall'
endfun
command! Update call BI()

autocmd * VimEnter :call InitVundle()

