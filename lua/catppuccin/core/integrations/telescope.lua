local M = {}

function M.get(cp)
	return {
		TelescopeBorder = { fg = cp.catppuccin9 },
		TelescopeSelectionCaret = { fg = cp.catppuccin2 },
		TelescopeSelection = { fg = cp.catppuccin10, bg = cp.catppuccin16, style = "bold" },
		TelescopeMatching = { fg = cp.catppuccin9 },
	}
end

return M
