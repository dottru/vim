" vim-rooter customisationp
let g:rooter_change_directory_for_non_project_files = 1
let g:rootee_patterna = [ "Rakefile", ".prj", ".git", ".git/" ]

autocmd rooter BufEnter *.ru:      Rooter
autocmd rooter BufEnter *.rb:      Rooter
autocmd rooter BufEnter *.feature: Rooter
autocmd rooter BufEnter *.js:      Rooter
autocmd rooter BufEnter *.coffee:  Rooter
autocmd rooter BufEnter *.haml:    Rooter
autocmd rooter BufEnter *.html:    Rooter
autocmd rooter BufEnter *.css:     Rooter
autocmd rooter BufEnter *.sass:    Rooter
autocmd rooter BufEnter *.scss:    Rooter
autocmd rooter BufEnter *.yml:     Rooter
autocmd rooter BufEnter *.rake:    Rooter
autocmd rooter BufEnter config.ru: Rooter
autocmd rooter BufEnter Gemfile:   Rooter
autocmd rooter BufEnter Rakefile:  Rooter
autocmd rooter BufEnter Procfile:  Rooter
