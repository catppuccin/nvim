local M = {}

function M.get(cp)
	return {
		GitGutterAdd = { fg = cp.catppuccino10 },
		GitGutterChange = { fg = cp.catppuccino9 },
		GitGutterDelete = { fg = cp.catppuccino6 },
	}
end
return M
