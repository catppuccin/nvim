local M = {}

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

function M.get()
	return {
		TreesitterContext = {
			fg = C.text,
			bg = O.transparent_background and C.none or C.mantle,
		},
		TreesitterContextBottom = {
			sp = O.transparent_background and C.dim or C.surface0,
			style = { "underline" },
		},
		TreesitterContextLineNumber = O.transparent_background and {
			fg = C.rosewater,
		} or {
			fg = C.surface1,
			bg = C.mantle,
		},
	}
end

return M
