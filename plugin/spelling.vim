" ////////////////////////
" Adding new langs
" ////////////////////////

" DOWNGT FROM http://wiki.services.openoffice.org/wiki/Dictionaries
"     cd ~/.vim/spell
"     wget -O /tmp/en.zip http://bit.ly/1hz95r6 && unzip /tmp/en.zip
"     unzip en_XX.zip && rm *.zip
"     vim +mkspell en en_xx
        
" ////////////////////////
" LPT (or just spelling)
" ////////////////////////
" ]s for next spelling error
" [s for prev
"  :help z= to see how suggestions work, son

function! SpellCheckToggle ()
    if &spell == 0
        set spell spelllang=en

        nnoremap []             :SpellCheck<cr>
        nnoremap <Leader><Tab>  z=

        echom "Spell checking has been enabled."
    else
        set nospell

        nnoremap []                <nop>
        nnoremap <Leader><Tab>     <nop>

        echom "Spell checking has been disabled."
    endif
endfunction

nnoremap ?? :call SpellCheckToggle()<cr>
