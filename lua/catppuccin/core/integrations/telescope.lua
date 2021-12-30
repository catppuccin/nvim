local M = {}

function M.get(cp)
	return {
		TelescopeBorder = { fg = cp.blue },
		TelescopeSelectionCaret = { fg = cp.flamingo },
		TelescopeSelection = { fg = cp.white, bg = cp.black3, style = "bold" },
		TelescopeMatching = { fg = cp.blue },
	}
end

return M
