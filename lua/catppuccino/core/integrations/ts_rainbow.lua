local M = {}

function M.get(cp)
	return {
		rainbowcol1 = {bg = cp.catppuccino2, fg = cp.catppuccino6},
		rainbowcol2 = {bg = cp.catppuccino2, fg = cp.catppuccino8},
		rainbowcol3 = {bg = cp.catppuccino2, fg = cp.catppuccino9},
		rainbowcol4 = {bg = cp.catppuccino2, fg = cp.catppuccino10},
		rainbowcol5 = {bg = cp.catppuccino2, fg = cp.catppuccino5},
		rainbowcol6 = {bg = cp.catppuccino2, fg = cp.catppuccino3},
		rainbowcol7 = {bg = cp.catppuccino2, fg = cp.catppuccino0},
	}
end

return M
