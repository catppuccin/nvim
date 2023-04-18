local M = {}

function M.get()
	return {
		GitSignsAdd = { fg = C.green }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = C.yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = C.red }, -- diff mode: Deleted line |diff.txt|

		GitSignsAddPreview = O.transparent_background and { fg = U.darken(C.green, 0.72, C.base), bg = C.none }
			or { link = "DiffAdd" },
		GitSignsDeletePreview = O.transparent_background and { fg = U.darken(C.red, 0.72, C.base), bg = C.none }
			or { link = "DiffDelete" },
		-- for word diff in previews
		GitSignsAddInline = O.transparent_background and {
			fg = C.green,
			bg = C.none,
			style = { "bold" },
		} or { link = "DiffAdd" },
		GitSignsDeleteInline = O.transparent_background and {
			fg = C.red,
			bg = C.none,
			style = { "bold" },
		} or { link = "DiffDelete" },
		GitSignsChangeInline = O.transparent_background and {
			fg = C.yellow,
			bg = C.none,
			style = { "bold" },
		} or { link = "DiffChange" },

		GitSignsDeleteVirtLn = O.transparent_background and { bg = C.none, fg = C.red } or { link = "DiffDelete" },
	}
end

return M
