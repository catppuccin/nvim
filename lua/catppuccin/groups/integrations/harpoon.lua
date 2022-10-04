local M = {}

function M.get()
	return {
		HarpoonWindow = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.base },
		HarpoonBorder = { fg = cp.blue },
	}
end

return M
