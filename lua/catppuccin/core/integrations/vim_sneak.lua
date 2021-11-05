local M = {}

function M.get(cp)
	return {
		Sneak = { fg = cp.catppuccin15, bg = cp.catppuccin4 },
		SneakScope = { bg = cp.catppuccin10 },
	}
end

return M
