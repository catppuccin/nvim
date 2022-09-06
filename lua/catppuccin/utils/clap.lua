local cp = require("catppuccin.palettes").get_palette()
local catppuccin = {}

catppuccin.display = { guibg = cp.mantle }

catppuccin.input = catppuccin.display
catppuccin.indicator = { guifg = cp.subtext1, guibg = cp.mantle }
catppuccin.spinner = { guifg = cp.yellow, guibg = cp.mantle, gui = "bold" }
catppuccin.search_text = { guifg = cp.text, guibg = cp.mantle, gui = "bold" }

catppuccin.preview = { guibg = cp.base }

catppuccin.selected = { guifg = cp.sapphire, gui = "bold,underline" }
catppuccin.current_selection = { guibg = cp.surface0, gui = "bold" }

catppuccin.selected_sign = { guifg = cp.red }
catppuccin.current_selection_sign = catppuccin.selected_sign

return catppuccin
