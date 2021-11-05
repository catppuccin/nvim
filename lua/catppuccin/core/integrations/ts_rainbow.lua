local M = {}

function M.get(cp)
	return {
		rainbowcol1 = {bg = cp.catppuccin1, fg = cp.catppuccin5},
		rainbowcol2 = {bg = cp.catppuccin1, fg = cp.catppuccin7},
		rainbowcol3 = {bg = cp.catppuccin1, fg = cp.catppuccin8},
		rainbowcol4 = {bg = cp.catppuccin1, fg = cp.catppuccin9},
		rainbowcol5 = {bg = cp.catppuccin1, fg = cp.catppuccin4},
		rainbowcol6 = {bg = cp.catppuccin1, fg = cp.catppuccin2},
		rainbowcol7 = {bg = cp.catppuccin1, fg = cp.catppuccin0},
	}
end

return M
