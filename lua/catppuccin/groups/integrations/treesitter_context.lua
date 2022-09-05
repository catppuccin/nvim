local M = {}

function M.get()
	return {
		TreesitterContext = {
			bg = cnf.transparent_background and cp.none or cp.mantle,
			fg = cp.text,
		},
		TreesitterContextLineNumber = { fg = cp.surface1 },
	}
end

return M
