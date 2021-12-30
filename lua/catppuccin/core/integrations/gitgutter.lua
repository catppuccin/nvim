local M = {}

function M.get(cp)
	return {
		GitGutterAdd = { fg = cp.blue },
		GitGutterChange = { fg = cp.yellow },
		GitGutterDelete = { fg = cp.red },
	}
end
return M
