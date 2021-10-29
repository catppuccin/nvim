local M = {}

function M.get(cp)
	return {
		Sneak = { fg = cp.bg_highlight, bg = cp.magenta },
		SneakScope = { bg = cp.bg_visual },
	}
end

return M
