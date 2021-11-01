local M = {}

function M.get(cp)
	return {
		CmpItemAbbr = { fg = cp.catppuccino12 },
		CmpItemAbbrDeprecated = { fg = cp.catppuccino12, stlye = "strikethrough" },
		CmpItemAbbrMatch = { fg = cp.katppuccino10, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = cp.katppuccino10, style = "bold" },
		CmpItemKind = { fg = cp.katppuccino9 },
		CmpItemMenu = { fg = cp.katppuccino10 },
	}
end

return M
