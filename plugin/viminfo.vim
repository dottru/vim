fun! SetVimInfo( path )
    let $PATH = (a:path=="") ? g:vimdir."/viminfo" : a:path

    " register-lines 'marks :commands % buf list n~ file-name, / skip search
    exec "set viminfo=\\\"128,'25,:256,%,n" . $PATH
endfun

command! -nargs=1 SetInfo :call SetVimInfo( <args> )
