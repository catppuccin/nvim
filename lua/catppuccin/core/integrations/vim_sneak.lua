local M = {}

function M.get(cp)
	return {
		Sneak = { fg = cp.overlay2, bg = cp.pink },
		SneakScope = { bg = cp.text },
	}
end

return M
