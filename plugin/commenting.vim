" Commenting blocks of code.
autocmd FileType c,cpp,java,scala      let b:comment_leader = '// '
autocmd FileType sh,ruby,python,bash   let b:comment_leader = '# '
autocmd FileType conf,fstab            let b:comment_leader = '# '
autocmd FileType tex                   let b:comment_leader = '% '
autocmd FileType mail                  let b:comment_leader = '> '
autocmd FileType vim                   let b:comment_leader = '" '

" noremap <silent>c :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
" noremap <silent>u :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR> 
