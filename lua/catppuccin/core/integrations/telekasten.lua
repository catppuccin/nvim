local M = {}

function M.get(cp)
	return {
		tkLink = { fg = cp.blue },
		tkBrackets = { fg = cp.pink },
		tkTag = { fg = cp.sky },
	}
end

return M
