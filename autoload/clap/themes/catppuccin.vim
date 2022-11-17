let s:c = has("nvim") == 1 ? luaeval('require("catppuccin.palettes").get_palette()') : luaeval('vim.dict(require("catppuccin.palettes").get_palette())')

let s:p = {}

let s:p.display = { 'guibg': s:c.mantle }

let s:p.input = s:p.display
let s:p.indicator = { 'guifg': s:c.subtext1, 'guibg': s:c.mantle }
let s:p.spinner = { 'guifg': s:c.yellow, 'guibg': s:c.mantle, 'gui': "bold" }
let s:p.search_text = { 'guifg': s:c.text, 'guibg': s:c.mantle, 'gui': "bold" }

let s:p.preview = { 'guibg': s:c.base }

let s:p.selected = { 'guifg': s:c.sapphire, 'gui': "bold,underline" }
let s:p.current_selection = { 'guibg': s:c.surface0, 'gui': "bold" }

let s:p.selected_sign = { 'guifg': s:c.red }
let s:p.current_selection_sign = copy(s:p.selected_sign)

let g:clap#themes#catppuccin#palette = s:p
