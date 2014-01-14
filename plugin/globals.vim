" Ensure that netrw files all stick it in $HOME
let g:netrw_home=$HOME

" mini buf expl auto start
let g:miniBufExplAutoStart=1

" Neocompl has been replaced
" let neocache start I guess
" let g:neocomplcache_enable_at_startup=1
" let g:neocomplcache_enable_smart_case=1

" Powerline settings
"let g:airline_powerline_fonts=1
let g:Powerline_symbols='fancy'

" Keep syntastic loc list open
let g:syntastic_always_populate_loc_list=1

" Tags file
set tagrelative
set tags=./.vim/tags/tags,./tags

" Easytags opts
let g:easytags_file='~/.vim/tags/tags'
let g:easytags_always_enabled = 1
let g:easytags_autorecurse = 1
let g:easytags_resolve_links = 1
let g:easytags_events = ['BufWritePost']

let g:fuf_modesDisable = []

set autowrite
set autowriteall
