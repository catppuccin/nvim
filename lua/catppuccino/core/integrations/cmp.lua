local M = {}

function M.get(cp)
	return {
		CmpItemAbbr = { fg = cp.catppuccino12 },
		CmpItemAbbrDeprecated = { fg = cp.catppuccino12, stlye = "strikethrough" },
		CmpItemAbbrMatch = { fg = cp.catppuccino11, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = cp.catppuccino11, style = "bold" },
		CmpItemKind = { fg = cp.catppuccino10 },
		CmpItemMenu = { fg = cp.catppuccino11 },
	}
end

return M
