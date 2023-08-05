local M = {}

function M.get()
	return O.transparent_background and {
		TreesitterContextBottom = { sp = C.dim, style = { "underline" } },
	} or {
		TreesitterContextLineNumber = {
			fg = C.surface1,
			bg = C.mantle,
		},
	}
end

return M
