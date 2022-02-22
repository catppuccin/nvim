local M = {}

function M.get(cp)
	return {
		FocusedSymbol = { fg = cp.yellow, bg = cp.black2 },
	}
end

return M
