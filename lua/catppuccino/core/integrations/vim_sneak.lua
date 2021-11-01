local M = {}

function M.get(cp)
	return {
		Sneak = { fg = cp.catppuccino16, bg = cp.katppuccino4 },
		SneakScope = { bg = cp.katppuccino10 },
	}
end

return M
