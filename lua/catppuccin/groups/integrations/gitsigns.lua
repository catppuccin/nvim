local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

function M.get()
	local transparent = U.nonnil(O.integrations.gitsigns.transparent, O.transparent_background)

	if transparent then
		return {
			GitSignsAdd = { fg = C.green }, -- diff mode: Added line |diff.txt|
			GitSignsChange = { fg = C.yellow }, -- diff mode: Changed line |diff.txt|
			GitSignsDelete = { fg = C.red }, -- diff mode: Deleted line |diff.txt|

			GitSignsCurrentLineBlame = { fg = C.surface1 },

			GitSignsAddPreview = { fg = C.green, bg = C.none },
			GitSignsDeletePreview = { fg = C.red, bg = C.none },

			-- for word diff in previews
			GitSignsAddInline = { fg = C.base, bg = C.green, style = { "bold" } },
			GitSignsDeleteInline = { fg = C.base, bg = C.red, style = { "bold" } },
			GitSignsChangeInline = { fg = C.base, bg = C.blue, style = { "bold" } },

			GitSignsDeleteVirtLn = { bg = C.none, fg = C.red },
		}
	else
		return {
			GitSignsAdd = { fg = C.green }, -- diff mode: Added line |diff.txt|
			GitSignsChange = { fg = C.yellow }, -- diff mode: Changed line |diff.txt|
			GitSignsDelete = { fg = C.red }, -- diff mode: Deleted line |diff.txt|

			GitSignsCurrentLineBlame = { fg = C.surface1 },

			GitSignsAddPreview = { link = "DiffAdd" },
			GitSignsDeletePreview = { link = "DiffDelete" },

			GitSignsAddInline = { bg = U.darken(C.green, 0.36, C.base) },
			GitSignsChangeInline = { bg = U.darken(C.blue, 0.14, C.base) },
			GitSignsDeleteInline = { bg = U.darken(C.red, 0.36, C.base) },
		}
	end
end

return M
