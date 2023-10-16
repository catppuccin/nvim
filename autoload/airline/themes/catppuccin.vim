let g:airline#themes#catppuccin#palette = {}

function! airline#themes#catppuccin#refresh()
	let s:c = has("nvim") == 1 ? luaeval('require("catppuccin.palettes").get_palette()') : luaeval('vim.dict(require("catppuccin.palettes").get_palette())')

	" Normal mode
	" (Dark)
	let s:N1 = [ s:c.mantle, s:c.blue, 59, 149 ] " guifg guibg ctermfg ctermbg
	let s:N2 = [ s:c.blue, s:c.mantle, 149, 59	] " guifg guibg ctermfg ctermbg
	let s:N3 = [ s:c.text, s:c.mantle, 145, 16	] " guifg guibg ctermfg ctermbg

	" Insert mode
	let s:I1 = [ s:c.mantle, s:c.teal, 59, 74 ] " guifg guibg ctermfg ctermbg
	let s:I2 = [ s:c.teal, s:c.mantle, 74, 59 ] " guifg guibg ctermfg ctermbg
	let s:I3 = [ s:c.text, s:c.mantle, 145, 16 ] " guifg guibg ctermfg ctermbg

	" Visual mode
	let s:V1 = [ s:c.mantle, s:c.mauve, 59, 209 ] " guifg guibg ctermfg ctermbg
	let s:V2 = [ s:c.mauve, s:c.mantle, 209, 59 ] " guifg guibg ctermfg ctermbg
	let s:V3 = [ s:c.text, s:c.mantle, 145, 16	] " guifg guibg ctermfg ctermbg

	" Replace mode
	let s:RE = [ s:c.mantle, s:c.red, 59, 203 ] " guifg guibg ctermfg ctermbg

	" Warning section
	let s:WR = [s:c.mantle, s:c.peach, 232, 166 ]

	" Error section
	let s:ER = [s:c.mantle, s:c.red, 232, 166 ]


	let g:airline#themes#catppuccin#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

	let g:airline#themes#catppuccin#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
	let g:airline#themes#catppuccin#palette.insert_replace = {
		\ 'airline_a': [ s:RE[0], s:I1[1], s:RE[1], s:I1[3], '' ] }

	let g:airline#themes#catppuccin#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

	let g:airline#themes#catppuccin#palette.replace = copy(g:airline#themes#catppuccin#palette.normal)
	let g:airline#themes#catppuccin#palette.replace.airline_a = [ s:RE[0], s:RE[1], s:RE[2], s:RE[3], '' ]

	let s:IA = [ s:N1[1], s:N3[1], s:N1[3], s:N3[3], '' ]
	let g:airline#themes#catppuccin#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

	let g:airline#themes#catppuccin#palette.normal.airline_warning = s:WR
	let g:airline#themes#catppuccin#palette.insert.airline_warning = s:WR
	let g:airline#themes#catppuccin#palette.visual.airline_warning = s:WR

	let g:airline#themes#catppuccin#palette.normal.airline_warning_to_airline_error = s:WR
	let g:airline#themes#catppuccin#palette.insert.airline_warning_to_airline_error = s:WR
	let g:airline#themes#catppuccin#palette.visual.airline_warning_to_airline_error = s:WR

	let g:airline#themes#catppuccin#palette.normal.airline_error = s:ER
	let g:airline#themes#catppuccin#palette.insert.airline_error = s:ER
	let g:airline#themes#catppuccin#palette.visual.airline_error = s:ER
endfunction

call airline#themes#catppuccin#refresh()
