local M = {}

function M.get(cp)
	return {
		CmpItemAbbr = { fg = cp.katppuccino11 },
		CmpItemAbbrDeprecated = { fg = cp.katppuccino11, stlye = "strikethrough" },
		CmpItemAbbrMatch = { fg = cp.katppuccino10, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = cp.katppuccino10, style = "bold" },
		CmpItemKind = { fg = cp.katppuccino9 },
		CmpItemMenu = { fg = cp.katppuccino10 },
	}
end

return M
