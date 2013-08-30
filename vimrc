"""
""" dottru/dotfiles vimrc
"""

" REMINDER :: set a global mark here. mV is bound from <Leader>v


" so plugin/choices
" so plugin/keybindings
" so plugin/nerdopts

runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()



" TODO :: install fugitive and make an f9/f10 shortcut for it

" TODO :: use sessions like a boss
" To automatically save and restore views for *.c files: >
" 	au BufWinLeave *.c mkview
" 	au BufWinEnter *.c silent loadview
