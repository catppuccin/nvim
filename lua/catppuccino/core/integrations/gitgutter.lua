local M = {}

function M.get(cp)
	return {
		GitGutterAdd = { fg = cp.katppuccino9 },
		GitGutterChange = { fg = cp.katppuccino8 },
		GitGutterDelete = { fg = cp.katppuccino5 },
	}
end
return M
