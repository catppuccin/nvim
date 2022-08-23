local cp = require("catppuccin.palettes").get_palette()
local catppuccin = {}

catppuccin.normal = {
	left = { { cp.mantle, cp.blue }, { cp.blue, cp.base } },
	middle = { { cp.blue, cp.none } },
	right = { { cp.overlay0, cp.base }, { cp.blue, cp.surface0 } },
	error = { { cp.mantle, cp.red } },
	warning = { { cp.mantle, cp.yellow } },
}

catppuccin.insert = {
	left = { { cp.mantle, cp.teal }, { cp.blue, cp.base } },
}

catppuccin.visual = {
	left = { { cp.mantle, cp.mauve }, { cp.blue, cp.base } },
}

catppuccin.replace = {
	left = { { cp.mantle, cp.red }, { cp.blue, cp.base } },
}

catppuccin.inactive = {
	left = { { cp.blue, cp.base }, { cp.overlay0, cp.base } },
	middle = { { cp.surface1, cp.base } },
	right = { { cp.surface1, cp.base }, { cp.overlay0, cp.base } },
}

catppuccin.tabline = {
	left = { { cp.overlay0, cp.base }, { cp.overlay0, cp.base } },
	middle = { { cp.surface1, cp.base } },
	right = { { cp.surface1, cp.base }, { cp.overlay0, cp.base } },
	tabsel = { { cp.blue, cp.surface1 }, { cp.overlay0, cp.base } },
}

return catppuccin
