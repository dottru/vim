" Vundle cfg
" ==========

set nocompatible            "~ skip compat as it breaks loads of new functionality
filetype off                "~ turn off tiletype detection while vundle does a thing

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
source ~/.vim/Bundle.vim

" VIM Configs
" -----------

"   (Press gf while hovering over a filename to go to that file,
"         When you're done, use C-o to get back here. ) 
"   MUST BE IN YOUR .vim DIR TONWORK

"    plugin/autocmds.vim                    - For future use.

"       ~/.vim/plugin/autocmds.vim		    - Useless.
"       ~/.vim/plugin/choices.vim		    - Random sets/lets.
"       ~/.vim/plugin/completion.vim        - Responsible for autocompletion
"       ~/.vim/plugin/globals.vim           - Sets global opts.
"       ~/.vim/plugin/keybindings.vim
"       ~/.vim/plugin/rainbow.vim
"       ~/.vim/plugin/style.vim

" ----------


" CTAGS AUTO TAGGERS - TODO: re-enable ctags on bufwrite
" autocmd BufWritePost *
"       \ if filereadable('tags') |
"       \   call system('ctags -a '.expand('%')) |
"       \ endif 
" "autocmd * :Rooter

" Add the current file's directory to the path if not already present.
    " autocmd BufRead *
    " \     let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |
    " \     exec "set path+=".s:tempPath

" CTAGS AUTO TAGGERS
" autocmd BufWritePost *
"
"       \ if filereadable('tags') |
"       \   call system('ctags -a '.expand('%')) |
"       \ endif:

" vim: set filetype=vicfg
