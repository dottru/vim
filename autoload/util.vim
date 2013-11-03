function! util#EnsureDirExists (dir)
  if !isdirectory(expand(a:dir))
    if exists("*mkdir")
      call mkdir(expand(a:dir),'p')
    else
      echo "Please create directory " . a:dir
    endif
  endif
endfunction
