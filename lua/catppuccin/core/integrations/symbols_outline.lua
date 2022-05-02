local M = {}

function M.get(cp)
	return {
		FocusedSymbol = { fg = cp.yellow, bg = cp.base2 },
	}
end

return M
