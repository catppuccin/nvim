if exists('g:loaded_catppuccin') | finish | endif

function! s:FlavourCompletion(...) abort
	return join(sort(luaeval("require'catppuccin.main'.cli_flavour_completion()")), "\n")
endfunction

function! s:ApplyFlavour(args) abort
	let l:flavour = matchstr(a:args[0], "[a-z]*")
	let g:catppuccin_flavour = flavour
	colorscheme catppuccin
endfunction

command! -nargs=1 -complete=custom,s:FlavourCompletion		Catppuccin call s:ApplyFlavour([<f-args>])

let g:loaded_catppuccin = 1
