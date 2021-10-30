local M = {}

function M.get(cp)
	return {
		TelescopeBorder = { fg = cp.catppuccino10 },
		TelescopeSelectionCaret = { fg = cp.catppuccino3 },
		TelescopeSelection = { fg = cp.catppuccino3, bg = cp.catppuccino16 },
		TelescopeMatching = { fg = cp.catppuccino10 },
	}
end

return M
