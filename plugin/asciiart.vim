" AsciiArt:Insert ascii art into the buffer
" Author:	Joshua Michael
" Date:		Mar 05, 2014
" Version:	v25d
" History: see :help asciiart-history 
" GetLatestVimScripts: 508 1 :AutoInstall: AsciiArt.vim
" ---------------------------------------------------------------------

" TODO: finish writing

" Load Once: 
if &cp || exists("g:loaded_AsciiArtPlugin")
 finish
endif

if v:version < 702
 echohl WarningMsg
 echo "***warning*** this version of AsciiArt needs vim 7.2"
 echohl Normal
 finish
endif

let s:keepcpo              = &cpo
let g:loaded_AsciiArtPlugin = "v25d"

set cpo&vim
"DechoTabOn

" ---------------------------------------------------------------------
"  Public Interface: 
if !hasmapto("<Plug>AsciiArt")
 nmap <unique> <c-w>a  <Plug>AsciiArt
endif

nnoremap <silent> <script> <Plug>AsciiArt :set lz<CR>:silent call AsciiArt#AsciiArt()<CR>:set nolz<CR>
com! AsciiArt :set lz|silent call AsciiArt#AsciiArt()|set nolz

" ---------------------------------------------------------------------
" AsciiArt: inserts text into buffer from an ascii generator
fun! AsciiArt()
  call AsciiArt#AsciiArt()
endfun

" ---------------------------------------------------------------------
"  Restore: 
let &cpo= s:keepcpo
unlet s:keepcpo
" ---------------------------------------------------------------------
"  Modelines: 
" vim: ts=4 fdm=marker
