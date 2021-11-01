local M = {}

function M.get(cp)
	return {
		TelescopeBorder = { fg = cp.katppuccino9 },
		TelescopeSelectionCaret = { fg = cp.katppuccino2 },
		TelescopeSelection = { fg = cp.katppuccino2, bg = cp.katppuccino15 },
		TelescopeMatching = { fg = cp.katppuccino9 },
	}
end

return M
