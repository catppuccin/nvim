local cp = require("catppuccin.core.color_palette")
local catppuccin = {}

catppuccin.normal = {
	a = { bg = cp.blue, fg = cp.base1, gui = "bold" },
	b = { bg = cp.surface1, fg = cp.blue },
	c = { bg = cp.base1, fg = cp.text },
}

catppuccin.insert = {
	a = { bg = cp.green, fg = cp.base2, gui = "bold" },
	b = { bg = cp.surface1, fg = cp.teal },
}

catppuccin.command = {
	a = { bg = cp.peach, fg = cp.base2, gui = "bold" },
	b = { bg = cp.surface1, fg = cp.peach },
}

catppuccin.visual = {
	a = { bg = cp.mauve, fg = cp.base2, gui = "bold" },
	b = { bg = cp.surface1, fg = cp.mauve },
}

catppuccin.replace = {
	a = { bg = cp.red, fg = cp.base2, gui = "bold" },
	b = { bg = cp.surface1, fg = cp.red },
}

catppuccin.inactive = {
	a = { bg = cp.base1, fg = cp.blue },
	b = { bg = cp.base1, fg = cp.surface1, gui = "bold" },
	c = { bg = cp.base1, fg = cp.overlay0 },
}

return catppuccin
