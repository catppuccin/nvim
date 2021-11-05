local M = {}

function M.get(cp)
	return {
		GitGutterAdd = { fg = cp.catppuccin9 },
		GitGutterChange = { fg = cp.catppuccin8 },
		GitGutterDelete = { fg = cp.catppuccin5 },
	}
end
return M
