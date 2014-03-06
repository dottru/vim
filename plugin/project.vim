let g:project_look_dir = ".project"
let g:project_dir      = ""

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
        let l:dirs = ["view", "backup", "swap", "undo", "tags"]

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
        let &viewdir   = a:prefix . '/view'
        let &backupdir = a:prefix . '/backup'
        let &directory = a:prefix . '/swap'
        let &undodir   = a:prefix . '/undo'
        let &tags     =  a:prefix . '/tags,./tags'

        exec "cd .."
    else
        "echom "No project dir provided."
    endif
endfunction

function! FindProjectRoot ()
    let l:pf = finddir( g:project_look_dir, '.;' ) " search upward for a:0
    let l:apf = expand("%:p:h")

    if expand('%:p') == $MYVIMRC
        let l:pf = expand("~/.vim/.project")
    endif

    exec "!cd " . l:apf

    if ( l:pf =~ "^$" )
        " Never found a project file
        "echom "Not inside of any project. State saving will be disabled."
    else
        "echom "Found project root @ " . l:pf
        exec "cd " . l:pf
        exec "cd .."

        let cwd = getcwd()
        let g:project_root_dir = cwd!="" ? cwd : expand("~/.vim")
        echom "Found project at " . g:project_root_dir
    endif

    call SetSaveDirs( l:pf )
    call AutoViews()
endfunction

autocmd BufWinEnter * call FindProjectRoot()
