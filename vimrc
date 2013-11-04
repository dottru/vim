" Vundle Bare Minimum
filetype off
set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Include pkg manager bundle
Bundle 'gmarik/vundle'


" Sample bundles. These map to github repos
"   [ user/repo ]
" 
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'tpope/vim-fugitive'
" Bundle 'fholgado/minibufexpl.vim'
" Bundle 'junegunn/vim-easy-align'


" Some failed 'Collaboration' plugins. They work very poorly.
" Bundle 'Floobits/floobits-vim'
" Bundle 'FredKSchott/CoVim'


filetype plugin indent on

" Create necessary directories
call util#EnsureDirExists($HOME . '/.vim/swap')
call util#EnsureDirExists($HOME . '/.vim/undo')
call util#EnsureDirExists($HOME . '/.vim/backup')
