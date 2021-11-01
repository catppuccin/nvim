local cp = require("katppuccino.core.color_palette")
local katppuccino = {}

katppuccino.normal = {
	a = { bg = cp.katppuccino9, fg = cp.katppuccino14 },
	b = { bg = cp.katppuccino12, fg = cp.katppuccino9 },
	c = { bg = cp.katppuccino14, fg = cp.katppuccino13 },
}

katppuccino.insert = {
	a = { bg = cp.katppuccino7, fg = cp.katppuccino14 },
	b = { bg = cp.katppuccino12, fg = cp.katppuccino7 },
}

katppuccino.command = {
	a = { bg = cp.katppuccino6, fg = cp.katppuccino14 },
	b = { bg = cp.katppuccino12, fg = cp.katppuccino6 },
}

katppuccino.visual = {
	a = { bg = cp.katppuccino3, fg = cp.katppuccino14 },
	b = { bg = cp.katppuccino12, fg = cp.katppuccino3 },
}

katppuccino.replace = {
	a = { bg = cp.katppuccino5, fg = cp.katppuccino14 },
	b = { bg = cp.katppuccino12, fg = cp.katppuccino5 },
}

katppuccino.inactive = {
	a = { bg = cp.katppuccino14, fg = cp.katppuccino9 },
	b = { bg = cp.katppuccino14, fg = cp.katppuccino12, gui = "bold" },
	c = { bg = cp.katppuccino14, fg = cp.katppuccino12 },
}

return katppuccino
