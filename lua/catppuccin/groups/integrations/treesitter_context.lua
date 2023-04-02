local M = {}

function M.get()
	return {
		TreesitterContext = { bg = C.mantle, fg = C.text },
		TreesitterContextLineNumber = { fg = C.surface1 },
	}
end

return M
