local M = {}

function M.get(cpt)
	return {
		GitGutterAdd = { fg = cpt.diff.add },
		GitGutterChange = { fg = cpt.diff.change },
		GitGutterDelete = { fg = cpt.diff.delete },
	}
end
return M
