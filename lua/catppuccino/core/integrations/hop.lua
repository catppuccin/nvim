local util = require("catppuccino.utils.util")

local M = {}

function M.get(cpt)
	return {
		HopNextKey = { bg = cpt.bg, fg = cpt.orange, style = "bold" },
		HopNextKey1 = { bg = cpt.bg, fg = cpt.blue, style = "bold" },
		HopNextKey2 = { bg = cpt.bg, fg = util.darken(cpt.blue, 0.80, cpt.bg) },
		HopUnmatched = { bg = cpt.bg, fg = cpt.comment },
	}
end

return M
