local cp = require("catppuccin.core.palettes.init").get_palette()
local catppuccin = {}

catppuccin.normal = {
	left = { { cp.mantle, cp.blue }, { cp.text, cp.surface0 } },
	middle = { { cp.blue, cp.base } },
	right = { { cp.overlay0, cp.base }, { cp.blue, cp.surface0 } },
	error = { { cp.mantle, cp.red } },
	warning = { { cp.mantle, cp.yellow } },
}

catppuccin.insert = {
	left = { { cp.mantle, cp.green }, { cp.text, cp.surface0 } },
}

catppuccin.visual = {
	left = { { cp.mantle, cp.mauve }, { cp.text, cp.surface0 } },
}

catppuccin.replace = {
	left = { { cp.mantle, cp.red }, { cp.text, cp.surface0 } },
}

catppuccin.command = {
	left = { { cp.mantle, cp.yellow }, { cp.text, cp.surface0 } },
}

catppuccin.inactive = {
	left = { { cp.mantle, cp.surface1 }, { cp.text, cp.surface0 } },
}

catppuccin.tabline = {
	left = { { cp.text, cp.surface0 } },
	middle = { { cp.text, cp.base } },
	right = { { cp.base, cp.base } },
	tabsel = { { cp.base, cp.text } },
}

return catppuccin
