local M = {}

function M.get()
	return {
		GitGutterAdd = { fg = C.green },
		GitGutterChange = { fg = C.yellow },
		GitGutterDelete = { fg = C.red },
	}
end

return M
