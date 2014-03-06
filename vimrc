""
""       (_)
"" __   ___ _ __ ___
"" \ \ / / | '_ ` _ \
""  \ V /| | | | | | |
""   \_/ |_|_| |_| |_|
""

" TASKS
"  TODO: Add autocmd on write of any file under ~/.vim to resource $myvimrc
"  TODO: Add git auto add/commit/push
"  TODO: Use gutters in some clever way
"
source ~/.vim/setup.vim

source ~/.vim/vundle.vim
source ~/.vim/bundles.vim

" User settings
"   - Use gf to jump to a file, <C-o> to return here.
" =====================================================

" BUNDLE CONFIGS
"       ~/.vim/vundle.vim                   - Initialises vundle for you
"       ~/.vim/bundles.vim                  - Loads your specific set of plugins

" USER CONFIGS
"       ~/.vim/plugin/style.vim          - Visual settings
"       ~/.vim/plugin/keybindings.vim    - User keybindings
"       ~/.vim/plugin/choices.vim        - Options and vars. All sets and lets.
"       ~/.vim/plugin/console.vim        - tmux keybindings / repl support
"       ~/.vim/plugin/autocmds.vim       - Event definitions
"       ~/.vim/plugin/completion.vim     - Responsible for code completion
"       ~/.vim/plugin/tags.vim           - Options for the tag files

" MOVE TO PLUGINS
"       ~/.vim/plugin/session.vim        - Allows saving and loading of sessions
"       ~/.vim/plugin/asciiart.vim       - Inserts ascii art like the header in vimrc
"       ~/.vim/plugin/spelling.vim       - Spell checking
"       ~/.vim/plugin/project.vim        - Per-project config support

" ----------

filetype plugin indent on
syntax on
