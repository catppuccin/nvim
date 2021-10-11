local M = {}
local util = require("catppuccino.utils.util")

function M.get(cpt)
	return {
		CmpItemAbbr = { fg = util.darken(cpt.white, 0.56) },
		CmpItemAbbrDeprecated = { fg = util.darken(cpt.white, 0.56), stlye = "strikethrough" },
		CmpItemAbbrMatch = { fg = cpt.fg, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = cpt.fg, style = "bold" },
		CmpItemKind = { fg = cpt.blue_br },
		CmpItemMenu = { fg = cpt.fg },
	}
end

return M
