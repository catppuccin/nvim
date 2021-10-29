local M = {}

function M.get(cp)
	return {
		Sneak = { fg = cp.catppuccino2_highlight, catppuccino2 = cp.magenta },
		SneakScope = { catppuccino2 = cp.catppuccino2_visual },
	}
end

return M
