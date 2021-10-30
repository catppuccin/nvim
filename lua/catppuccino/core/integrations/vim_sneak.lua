local M = {}

function M.get(cp)
	return {
		Sneak = { fg = cp.catppuccino2_highlight, bg = cp.catppuccino5 },
		SneakScope = { bg = cp.util.darken(cp.catppuccino10, 0.2) },
	}
end

return M
