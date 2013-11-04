function! sample#FakeDelete (dir)
  if !isdirectory(expand(a:dir))
      echo "WE ARE DELETING " . a:dir
      echo "Just kidding."
    else
      echo "That directory doesn't exist."
    endif
  endif
endfunction
