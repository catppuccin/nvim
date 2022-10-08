local cp = require("catppuccin.palettes").get_palette()
local config = require("catppuccin").options
local catppuccin = {}

local transparent_bg = config.transparent_background and "NONE" or cp.mantle

catppuccin.normal = {
	a = { bg = cp.blue, fg = cp.mantle, gui = "bold" },
	b = { bg = cp.surface1, fg = cp.blue },
	c = { bg = transparent_bg, fg = cp.text },
}

catppuccin.insert = {
	a = { bg = cp.green, fg = cp.base, gui = "bold" },
	b = { bg = cp.surface1, fg = cp.teal },
}

catppuccin.command = {
	a = { bg = cp.peach, fg = cp.base, gui = "bold" },
	b = { bg = cp.surface1, fg = cp.peach },
}

catppuccin.visual = {
	a = { bg = cp.mauve, fg = cp.base, gui = "bold" },
	b = { bg = cp.surface1, fg = cp.mauve },
}

catppuccin.replace = {
	a = { bg = cp.red, fg = cp.base, gui = "bold" },
	b = { bg = cp.surface1, fg = cp.red },
}

catppuccin.inactive = {
	a = { bg = transparent_bg, fg = cp.blue },
	b = { bg = transparent_bg, fg = cp.surface1, gui = "bold" },
	c = { bg = transparent_bg, fg = cp.overlay0 },
}

return catppuccin
