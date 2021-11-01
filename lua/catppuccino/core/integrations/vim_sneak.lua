local M = {}

function M.get(cp)
	return {
		Sneak = { fg = cp.catppuccino16, bg = cp.katppuccino4 },
		SneakScope = { bg = cp.catppuccino11 },
	}
end

return M
