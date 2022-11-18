let s:c = has("nvim") == 1 ? luaeval('require("catppuccin.palettes").get_palette()') : luaeval('vim.dict(require("catppuccin.palettes").get_palette())')

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:c.mantle, s:c.blue ], [ s:c.blue, s:c.base ] ]
let s:p.normal.middle = [ [ s:c.blue, s:c.mantle ] ]
let s:p.normal.right = [ [ s:c.overlay0, s:c.base ], [ s:c.blue, s:c.surface0 ] ]
let s:p.insert.left = [ [ s:c.mantle, s:c.teal ], [ s:c.blue, s:c.base ] ]
let s:p.visual.left = [ [ s:c.mantle, s:c.mauve ], [ s:c.blue, s:c.base ] ]
let s:p.replace.left = [ [ s:c.mantle, s:c.red ], [ s:c.blue, s:c.base ] ]

let s:p.inactive.left =  [ [ s:c.blue, s:c.base ], [ s:c.overlay0, s:c.base ] ]
let s:p.inactive.middle = [ [ s:c.surface1, s:c.base ] ]
let s:p.inactive.right = [ [ s:c.surface1, s:c.base ], [ s:c.overlay0, s:c.base ] ]

let s:p.tabline.left = [ [ s:c.overlay0, s:c.base ], [ s:c.overlay0, s:c.base ] ]
let s:p.tabline.tabsel = [ [ s:c.blue, s:c.surface1 ], [ s:c.overlay0, s:c.base] ]
let s:p.tabline.middle = [ [ s:c.surface1, s:c.base ] ]
let s:p.tabline.right = copy(s:p.inactive.right)
let s:p.normal.error = [ [ s:c.mantle, s:c.red ] ]
let s:p.normal.warning = [ [ s:c.mantle, s:c.yellow ] ]

let g:lightline#colorscheme#catppuccin#palette = lightline#colorscheme#fill(s:p)
