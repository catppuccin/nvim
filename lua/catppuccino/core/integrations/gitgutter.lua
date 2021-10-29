local M = {}

function M.get(cp)
	return {
		GitGutterAdd = { fg = cp.diff.add },
		GitGutterChange = { fg = cp.diff.change },
		GitGutterDelete = { fg = cp.diff.delete },
	}
end
return M
