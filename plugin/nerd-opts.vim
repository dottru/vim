let NERDTreeShowBookmarks=1

augroup LoadNERD
  autocmd! 
  autocmd vimenter * if !argc() | NERDTreeCWD | wincmd p | endif
augroup END

" If only 2 windows left, NERDTree and Tag_List, close vim or current tab
fun! NoExcitingBuffersLeft()
  if winnr("$") == 3
    let w1 = bufname(winbufnr(1))
    let w2 = bufname(winbufnr(2))
    let w3 = bufname(winbufnr(3))
    if (exists(":NERDTree")) && (w1 == "__Tag_List__" || w2 == "__Tag_List__" || w3 == "__Tag_List__")
      if tabpagenr("$") == 1
        exec 'qa'
      else
        exec 'tabclose'
      endif
    endif
  endif
endfun
autocmd BufWinLeave * call NoExcitingBuffersLeft()

let NERDTreeQuitOnOpen=1
