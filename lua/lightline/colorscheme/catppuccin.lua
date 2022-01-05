local cp = require("catppuccin.core.color_palette")
local catppuccin = {}

catppuccin.normal = {
	left = { { cp.black1, cp.blue }, { cp.blue, cp.black2 } },
	middle = { { cp.blue, cp.black4 } },
	right = { { cp.black0, cp.black2 }, { cp.blue, cp.black2 } },
	error = { { cp.black1, cp.red } },
	warning = { { cp.black1, cp.yellow } },
}

catppuccin.insert = {
	left = { { cp.black1, cp.teal }, { cp.blue, cp.black2 } },
}

catppuccin.visual = {
	left = { { cp.black1, cp.mauve }, { cp.blue, cp.black2 } },
}

catppuccin.replace = {
	left = { { cp.black1, cp.red }, { cp.blue, cp.black2 } },
}

catppuccin.inactive = {
	left = { { cp.blue, cp.black2 }, { cp.gray0, cp.black2 } },
	middle = { { cp.black4, cp.black2 } },
	right = { { cp.black4, cp.black2 }, { cp.gray0, cp.black2 } },
}

catppuccin.tabline = {
	left = { { cp.gray0, cp.black2 }, { cp.gray0, cp.black2 } },
	middle = { { cp.black4, cp.black2 } },
	right = { { cp.black4, cp.black2 }, { cp.gray0, cp.black2 } },
	tabsel = { { cp.blue, cp.black4 }, { cp.gray0, cp.black2 } },
}

return catppuccin
