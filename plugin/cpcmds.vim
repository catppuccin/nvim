" GPL-3.0 License

" prevent the plugin's interface from loading twice
if exists('g:loaded_catppuccino') | finish | endif

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

" Utils {{{
function! cpcmds#get_first_arg(...)
	return "".get(a:, 1, 1).""
endfunction
" }}}

" Test Availability {{{
" aa = available arguments
function! cpcmds#available_args_flavors() abort
	return luaeval('require("catppuccino.utils.cli_completion").available_commands()')
endfunction
" }}}

" Tab Completion {{{
function! s:complete_args_flavors(arg, line, pos) abort
	return join(cpcmds#available_args_flavors(), "\n")
endfunction
" }}}

" Interface {{{
command! -nargs=+ -complete=custom,s:complete_args_flavors CPLoad call v:lua.require'catppuccino.main'.main('load',cpcmds#get_first_arg(<f-args>))
" }}}

let &cpo = s:save_cpo " restore after
unlet s:save_cpo

" set to true the var that controls the plugin's loading
let g:loaded_catppuccino = 1
