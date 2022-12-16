local C = require("catppuccin.palettes").get_palette()
local O = require("catppuccin").options
local catppuccin = {}

local transparent_bg = O.transparent_background and "NONE" or C.mantle

catppuccin.normal = {
	a = { bg = C.blue, fg = C.mantle, gui = "bold" },
	b = { bg = C.surface1, fg = C.blue },
	c = { bg = transparent_bg, fg = C.text },
}

catppuccin.insert = {
	a = { bg = C.green, fg = C.base, gui = "bold" },
	b = { bg = C.surface1, fg = C.teal },
}

catppuccin.terminal = {
	a = { bg = C.green, fg = C.base, gui = "bold" },
	b = { bg = C.surface1, fg = C.teal },
}

catppuccin.command = {
	a = { bg = C.peach, fg = C.base, gui = "bold" },
	b = { bg = C.surface1, fg = C.peach },
}

catppuccin.visual = {
	a = { bg = C.mauve, fg = C.base, gui = "bold" },
	b = { bg = C.surface1, fg = C.mauve },
}

catppuccin.replace = {
	a = { bg = C.red, fg = C.base, gui = "bold" },
	b = { bg = C.surface1, fg = C.red },
}

catppuccin.inactive = {
	a = { bg = transparent_bg, fg = C.blue },
	b = { bg = transparent_bg, fg = C.surface1, gui = "bold" },
	c = { bg = transparent_bg, fg = C.overlay0 },
}

return catppuccin
