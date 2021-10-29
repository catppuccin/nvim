local M = {}
local util = require("catppuccino.utils.util")

function M.get(cp)
	return {
		CmpItemAbbr = { fg = util.darken(cp.catppuccino0, 0.56) },
		CmpItemAbbrDeprecated = { fg = util.darken(cp.catppuccino0, 0.56), stlye = "strikethrough" },
		CmpItemAbbrMatch = { fg = cp.fg, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = cp.fg, style = "bold" },
		CmpItemKind = { fg = cp.catppuccino10 },
		CmpItemMenu = { fg = cp.fg },
	}
end

return M
