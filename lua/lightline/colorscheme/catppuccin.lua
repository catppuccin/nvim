local cp = require("catppuccin.core.color_palette")
local catppuccin = {}

catppuccin.normal = {
	left = { { cp.base1, cp.blue }, { cp.blue, cp.base2 } },
	middle = { { cp.blue, cp.surface1 } },
	right = { { cp.overlay0, cp.base2 }, { cp.blue, cp.surface0 } },
	error = { { cp.base1, cp.red } },
	warning = { { cp.base1, cp.yellow } },
}

catppuccin.insert = {
	left = { { cp.base1, cp.teal }, { cp.blue, cp.base2 } },
}

catppuccin.visual = {
	left = { { cp.base1, cp.mauve }, { cp.blue, cp.base2 } },
}

catppuccin.replace = {
	left = { { cp.base1, cp.red }, { cp.blue, cp.base2 } },
}

catppuccin.inactive = {
	left = { { cp.blue, cp.base2 }, { cp.overlay0, cp.base2 } },
	middle = { { cp.surface1, cp.base2 } },
	right = { { cp.surface1, cp.base2 }, { cp.overlay0, cp.base2 } },
}

catppuccin.tabline = {
	left = { { cp.overlay0, cp.base2 }, { cp.overlay0, cp.base2 } },
	middle = { { cp.surface1, cp.base2 } },
	right = { { cp.surface1, cp.base2 }, { cp.overlay0, cp.base2 } },
	tabsel = { { cp.blue, cp.surface1 }, { cp.overlay0, cp.base2 } },
}

return catppuccin
