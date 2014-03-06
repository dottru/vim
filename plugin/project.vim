let g:project_look_dir = ".project"
let g:project_dir      = ""
let g:save_dir         = ""

command! -nargs=1 NewProject call NewProject(<args>)
function! NewProject( dir )
    " Given a dir, NewProject sets that as a project dir
    let l:workdir = a:dir ? a:dir : getcwd()

    if !isdirectory( l:workdir )
        call mkdir( l:workdir, "p" )
        "echom "Created new project dir, " . l:workdir
    endif

    let l:projdir = l:workdir . "/" . g:project_look_dir
    call mkdir(l:projdir, "p")

    chdir l:workdir
    call FindProjectRoot() " Load this as a project
endfunction

function! AutoViews()
    " Set autocmds to automatically save and load a view
    "let &viewdir   = g:project_dir . '/view'

    if ( isdirectory( g:project_dir ) && g:project_dir != "" )
        autocmd BufWinLeave ?* mkview!         " l:viewname
        autocmd BufWinEnter ?* silent loadview " l:viewname
    endif

    "echom "Set autocmds for view saving/loading."
endfunction

function! SetSaveDirs ( prefix )
    if ( a:prefix != "" )
        let l:dirs = ["view", "backup", "swap", "undo", "tags", "sess"]

        " Create save dirs
        "echom "Setting save dir prefix to " . a:prefix
        exe "cd " . a:prefix
        "echom "Inside of " . getcwd() . " here"

        for dir in l:dirs
            if !isdirectory( dir)
                "echom "Created " . getcwd() . "/" . dir
                exec "call mkdir ('" . dir . "')"
            endif
        endfor

        " Set save locs for all these.
        let &viewdir       = a:prefix . '/view'
        let &backupdir     = a:prefix . '/backup'
        let &directory     = a:prefix . '/swap'
        let &undodir       = a:prefix . '/undo'
        let &tags          = a:prefix . '/tags'
        let g:session      = a:prefix . '/Session.vim'

        exec "cd " . g:project_dir
    else
        "echom "No project dir provided."
    endif
endfunction

function! FindProjectRoot ()
    exec "lcd " . expand("%:p:h")

    let pf = ( expand('%:p') =~ ".*vimrc?$" ) ?  expand("~/.vim/.project") :  finddir(g:project_look_dir, '.;' )

    exec "lcd " . pf
    let g:save_dir = getcwd()
    exec "lcd .."
    let g:project_dir = getcwd()

    if filereadable(g:project_dir."/vimrc")
        exec "source " . g:project_dir . "/vimrc"
    endif

    call SetVimInfo( g:save_dir . "/viminfo" )

    call SetSaveDirs( g:save_dir )
    call AutoViews()
endfunction

autocmd WinEnter * call FindProjectRoot()
