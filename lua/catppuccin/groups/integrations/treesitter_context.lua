local M = {}

function M.get()
	return O.transparent_background and {
		TreesitterContextBottom = { sp = C.dim, style = { "underline" } },
	} or {
		TreesitterContextBottom = {
			sp = C.surface0,
			style = { "underline" },
		},
		TreesitterContextLineNumber = {
			fg = C.surface1,
			bg = C.mantle,
		},
	}
end

return M
