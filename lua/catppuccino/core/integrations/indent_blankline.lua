local M = {}

function M.get(cpt)
	return {
		IndentBlanklineChar = { fg = cpt.gray },
	}
end

return M
