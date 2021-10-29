local M = {}

function M.get(cp)
	return {
		TelescopeBorder = { fg = cp.border_highlight },
		TelescopeSelectionCaret = { fg = cp.catppuccino3 },
		TelescopeSelection = { fg = cp.catppuccino3, bg = cp.catppuccino2_highlight },
		TelescopeMatching = { fg = cp.catppuccino10 },
	}
end

return M
