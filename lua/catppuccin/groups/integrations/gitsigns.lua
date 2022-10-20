local M = {}

function M.get()
	return {
		GitSignsAdd = { fg = cp.green }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = cp.yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = cp.red }, -- diff mode: Deleted line |diff.txt|

		GitSignsAddPreview = cnf.transparent_background and { fg = cp.green, bg = cp.none } or { link = "DiffAdd" },
		GitSignsDeletePreview = cnf.transparent_background and { fg = cp.red, bg = cp.none } or { link = "DiffDelete" },
	}
end

return M
