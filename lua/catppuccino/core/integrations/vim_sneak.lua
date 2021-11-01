local M = {}

function M.get(cp)
	return {
		Sneak = { fg = cp.catppuccino16, bg = cp.catppuccino5 },
		SneakScope = { bg = cp.catppuccino11 },
	}
end

return M
