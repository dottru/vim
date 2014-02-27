" load best colour scheme
colorscheme solarized

" set editor background to dark
set background=dark

syntax enable


let g:solarized_termtrans = 1
let g:solarized_termcolors=16  " this was 256 and looked all fucked up.

let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

" Sets fonts and shit
	if has("gui_running")
	    if has("gui_gtk2")
		:set guifont=""
	    elseif has("x11")
		" Also for GTK 1
		:set guifont="" 
	    elseif has("gui_win32")
		:set guifont=Luxi_Mono:h12:cANSI
	    elseif has("gui_macvim")
	        :set guifont=Source\ Code\ Pro:h13
	    endif
	endif
