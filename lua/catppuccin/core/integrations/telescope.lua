local M = {}

function M.get(cp)
	return {
		TelescopeBorder = { fg = cp.catppuccin9 },
		TelescopeSelectionCaret = { fg = cp.catppuccin2 },
		TelescopeSelection = { fg = cp.catppuccin2, bg = cp.catppuccin16 },
		TelescopeMatching = { fg = cp.catppuccin9 },
	}
end

return M
