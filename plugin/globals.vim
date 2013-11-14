" Ensure that netrw files all stick it in $HOME
let g:netrw_home=$HOME

" Easytags opts
" let g:easytags_file='~/.vim/tags/tags'
" let g:easytags_always_enabled = 1
" let g:easytags_autorecurse = 1
" let g:easytags_resolve_links = 1
" let g:easytags_events = ['BufWritePost']

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:bufferline_echo = 0
"set noshowmode
set fillchars+=stl:\ ,stlnc:\
let g:airline#extensions#tabline#enabled=1


" gist opts
let g:gist_detect_filetype = 1
let g:gist_show_privates = 1
let g:gist_get_multiplefile = 1

" ctrlp root
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:ackprg = 'ag --nogroup --nocolor --column'

set showfixes=0
