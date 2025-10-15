" deadbeef.vim - A Vim colorscheme based on the deadbeef VSCode theme
" Maintainer: deadbeef theme
" Version: 2.0 (Lua-powered)

if exists("syntax_on")
	syntax reset
endif

set background=dark
let g:colors_name = "deadbeef"

" Load the Lua-based theme
lua require("deadbeef").load()