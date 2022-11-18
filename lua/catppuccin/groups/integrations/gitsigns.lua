local M = {}

function M.get()
	return {
		GitSignsAdd = { fg = C.green }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = C.yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = C.red }, -- diff mode: Deleted line |diff.txt|

		GitSignsAddPreview = O.transparent_background and { fg = C.green, bg = C.none } or { link = "DiffAdd" },
		GitSignsDeletePreview = O.transparent_background and { fg = C.red, bg = C.none } or { link = "DiffDelete" },
	}
end

return M
