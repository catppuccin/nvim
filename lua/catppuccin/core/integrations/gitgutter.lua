local M = {}

function M.get(cp)
	return {
		GitGutterAdd = { fg = cp.green },
		GitGutterChange = { fg = cp.yellow },
		GitGutterDelete = { fg = cp.red },
	}
end
return M
