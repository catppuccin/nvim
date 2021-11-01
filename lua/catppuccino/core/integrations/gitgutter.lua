local M = {}

function M.get(cp)
	return {
		GitGutterAdd = { fg = cp.catppuccino10 },
		GitGutterChange = { fg = cp.catppuccino9 },
		GitGutterDelete = { fg = cp.katppuccino5 },
	}
end
return M
