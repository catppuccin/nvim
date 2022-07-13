if exists('g:loaded_catppuccin') | finish | endif

function! s:FlavourCompletion(...) abort
	return join(sort(luaeval("require'catppuccin.main'.cli_flavour_completion()")), "\n")
endfunction

function! s:ApplyFlavour(args) abort
	let g:catppuccin_flavour = matchstr(a:args[0], "[a-z]*")
	colorscheme catppuccin
endfunction

command! -nargs=1 -complete=custom,s:FlavourCompletion		Catppuccin call s:ApplyFlavour([<f-args>])
command! CatppuccinCompile lua require("catppuccin.utils.util").compile()
command! CatppuccinClean lua require("catppuccin.utils.util").clean()

let g:loaded_catppuccin = 1
