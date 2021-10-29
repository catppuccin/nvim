local M = {}

function M.get(cp)
	return {
		Sneak = { fg = cp.catppuccino2_highlight, bg = cp.catppuccino5 },
		SneakScope = { bg = cp.catppuccino2_visual },
	}
end

return M
