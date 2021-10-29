local M = {}
local util = require("catppuccino.utils.util")

function M.get(cp)
	return {
		CmpItemAbbr = { fg = util.darken(cp.white, 0.56) },
		CmpItemAbbrDeprecated = { fg = util.darken(cp.white, 0.56), stlye = "strikethrough" },
		CmpItemAbbrMatch = { fg = cp.fg, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = cp.fg, style = "bold" },
		CmpItemKind = { fg = cp.blue_br },
		CmpItemMenu = { fg = cp.fg },
	}
end

return M
