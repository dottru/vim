" Autocmds for various events
" docs: http://w.ibm.com/developerworks/library/l-vim-script-5/

" Write-all when vim loses focus
"autocmd FocusLost * :wa
"autocmd FocusLost * silent! wa

" wiggle cursor. Currently is broken and yeah
" TODO: what the fuck was I on when I wrote that
" autocmd! BufWriteCmd * call util#WakeCursor ("Saving...","Saved~")

" autocmd BufRead,BufNewFile preamble Explore
