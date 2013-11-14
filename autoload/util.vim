" It appears to just be a wrapper to mkdir
function! util#EnsureDirExists (dir)
  if !isdirectory(expand(a:dir))
    if exists("*mkdir")
      call mkdir(expand(a:dir),'p')
    else
      echo "Please create directory " . a:dir
    endif
  endif
endfunction

" Saves and execs first argument
function! util#Save (...)
    normal :w
    call util#Clear()
endfunction

" Clears search hist and execs first argument
function! util#Clear (...)
    normal :noh 
    if len(a:000) > 1
        exec "normal " a:1
    endif
endfunction

function! util#Write ()
    exe ':w'
    echom @% . "saved."
endfunction

function! util#SudoWrite ()
    normal :w !sudo tee %
    echom "File written as root."
endfunction

function! util#Source (file)
    exec "normal :source " . expand(a:file)
    echom "Sourced VIM configuration."
endfunction

function! DirSel ()
    let a:dir = input("Starting directory?> ")
    exe ':CtrlP ' . a:dir
endfunction
