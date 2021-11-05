local M = {}

function M.get(cp)
	return {
		CmpItemAbbr = { fg = cp.catppuccin11 },
		CmpItemAbbrDeprecated = { fg = cp.catppuccin11, stlye = "strikethrough" },
		CmpItemAbbrMatch = { fg = cp.catppuccin10, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = cp.catppuccin10, style = "bold" },
		CmpItemKind = { fg = cp.catppuccin9 },
		CmpItemMenu = { fg = cp.catppuccin10 },
	}
end

return M
