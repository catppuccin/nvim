local M = {}

function M.get()
	return {
		NvimSurroundHighlight = { bg = U.darken(C.peach, 0.6, C.base), style = { "bold" } },
	}
end

return M
