local M = {}

function M.get()
	if type(O.integrations.gitsigns) == "boolean" then
		O.integrations.gitsigns = { enabled = true, transparent = false }
	end

	if O.transparent_background then
		return {
			GitSignsAdd = { fg = C.green }, -- diff mode: Added line |diff.txt|
			GitSignsChange = { fg = C.yellow }, -- diff mode: Changed line |diff.txt|
			GitSignsDelete = { fg = C.red }, -- diff mode: Deleted line |diff.txt|

			GitSignsCurrentLineBlame = { fg = C.surface1 },

			GitSignsAddPreview = O.integrations.gitsigns.transparent
					and { fg = U.darken(C.green, 0.72, C.base), bg = C.none }
				or { link = "DiffAdd" },
			GitSignsDeletePreview = O.integrations.gitsigns.transparent
					and { fg = U.darken(C.red, 0.72, C.base), bg = C.none }
				or { link = "DiffDelete" },
			-- for word diff in previews
			GitSignsAddInline = O.integrations.gitsigns.transparent and {
				fg = C.green,
				bg = C.none,
				style = { "bold" },
			} or { link = "DiffAdd" },
			GitSignsDeleteInline = O.integrations.gitsigns.transparent and {
				fg = C.red,
				bg = C.none,
				style = { "bold" },
			} or { link = "DiffDelete" },
			GitSignsChangeInline = O.integrations.gitsigns.transparent and {
				fg = C.yellow,
				bg = C.none,
				style = { "bold" },
			} or { link = "DiffChange" },

			GitSignsDeleteVirtLn = O.integrations.gitsigns.transparent and { bg = C.none, fg = C.red }
				or { link = "DiffDelete" },
		}
	else
		return {
			GitSignsAdd = { fg = C.green }, -- diff mode: Added line |diff.txt|
			GitSignsChange = { fg = C.yellow }, -- diff mode: Changed line |diff.txt|
			GitSignsDelete = { fg = C.red }, -- diff mode: Deleted line |diff.txt|

			GitSignsCurrentLineBlame = { fg = C.surface1 },

			GitSignsAddPreview = O.integrations.gitsigns.transparent and { fg = C.green, bg = C.none }
				or { link = "DiffAdd" },
			GitSignsDeletePreview = O.integrations.gitsigns.transparent and { fg = C.red, bg = C.none }
				or { link = "DiffDelete" },

			GitSignsAddInline = { bg = U.darken(C.green, 0.36, C.base) },
			GitSignsDeleteInline = { bg = U.darken(C.red, 0.36, C.base) },
		}
	end
end

return M
