local cp = require("katppuccino.core.color_palette")
local katppuccino = {}

katppuccino.normal = {
	left = { { cp.katppuccino14, cp.katppuccino9 }, { cp.katppuccino9, cp.katppuccino1 } },
	middle = { { cp.katppuccino9, cp.katppuccino12 } },
	right = { { cp.katppuccino13, cp.katppuccino1 }, { cp.katppuccino9, cp.katppuccino1 } },
	error = { { cp.katppuccino14, cp.katppuccino5 } },
	warning = { { cp.katppuccino14, cp.katppuccino8 } },
}

katppuccino.insert = {
	left = { { cp.katppuccino14, cp.katppuccino7 }, { cp.katppuccino9, cp.katppuccino1 } },
}

katppuccino.visual = {
	left = { { cp.katppuccino14, cp.katppuccino3 }, { cp.katppuccino9, cp.katppuccino1 } },
}

katppuccino.replace = {
	left = { { cp.katppuccino14, cp.katppuccino5 }, { cp.katppuccino9, cp.katppuccino1 } },
}

katppuccino.inactive = {
	left = { { cp.katppuccino9, cp.katppuccino1 }, { cp.katppuccino11, cp.katppuccino1 } },
	middle = { { cp.katppuccino12, cp.katppuccino1 } },
	right = { { cp.katppuccino12, cp.katppuccino1 }, { cp.katppuccino11, cp.katppuccino1 } },
}

katppuccino.tabline = {
	left = { { cp.katppuccino11, cp.katppuccino1 }, { cp.katppuccino11, cp.katppuccino1 } },
	middle = { { cp.katppuccino12, cp.katppuccino1 } },
	right = { { cp.katppuccino12, cp.katppuccino1 }, { cp.katppuccino11, cp.katppuccino1 } },
	tabsel = { { cp.katppuccino9, cp.katppuccino12 }, { cp.katppuccino11, cp.katppuccino1 } },
}

return katppuccino
