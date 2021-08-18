" GPL-3.0 License

" prevent the plugin's interface from loading twice
if exists('g:loaded_catppuccino') | finish | endif

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

" Interface {{{
command! CPLoad lua require'catppuccino.main'.main('load')
" }}}

let &cpo = s:save_cpo " restore after
unlet s:save_cpo

" set to true the var that controls the plugin's loading
let g:loaded_catppuccino = 1
