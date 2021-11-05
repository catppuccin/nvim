local cp = require("catppuccin.core.color_palette")
local catppuccin = {}

catppuccin.normal = {
	left = { { cp.catppuccin14, cp.catppuccin9 }, { cp.catppuccin9, cp.catppuccin1 } },
	middle = { { cp.catppuccin9, cp.catppuccin12 } },
	right = { { cp.catppuccin13, cp.catppuccin1 }, { cp.catppuccin9, cp.catppuccin1 } },
	error = { { cp.catppuccin14, cp.catppuccin5 } },
	warning = { { cp.catppuccin14, cp.catppuccin8 } },
}

catppuccin.insert = {
	left = { { cp.catppuccin14, cp.catppuccin7 }, { cp.catppuccin9, cp.catppuccin1 } },
}

catppuccin.visual = {
	left = { { cp.catppuccin14, cp.catppuccin3 }, { cp.catppuccin9, cp.catppuccin1 } },
}

catppuccin.replace = {
	left = { { cp.catppuccin14, cp.catppuccin5 }, { cp.catppuccin9, cp.catppuccin1 } },
}

catppuccin.inactive = {
	left = { { cp.catppuccin9, cp.catppuccin1 }, { cp.catppuccin11, cp.catppuccin1 } },
	middle = { { cp.catppuccin12, cp.catppuccin1 } },
	right = { { cp.catppuccin12, cp.catppuccin1 }, { cp.catppuccin11, cp.catppuccin1 } },
}

catppuccin.tabline = {
	left = { { cp.catppuccin11, cp.catppuccin1 }, { cp.catppuccin11, cp.catppuccin1 } },
	middle = { { cp.catppuccin12, cp.catppuccin1 } },
	right = { { cp.catppuccin12, cp.catppuccin1 }, { cp.catppuccin11, cp.catppuccin1 } },
	tabsel = { { cp.catppuccin9, cp.catppuccin12 }, { cp.catppuccin11, cp.catppuccin1 } },
}

return catppuccin
