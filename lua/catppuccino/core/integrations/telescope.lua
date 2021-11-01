local M = {}

function M.get(cp)
	return {
		TelescopeBorder = { fg = cp.catppuccino10 },
		TelescopeSelectionCaret = { fg = cp.katppuccino2 },
		TelescopeSelection = { fg = cp.katppuccino2, bg = cp.catppuccino16 },
		TelescopeMatching = { fg = cp.catppuccino10 },
	}
end

return M
