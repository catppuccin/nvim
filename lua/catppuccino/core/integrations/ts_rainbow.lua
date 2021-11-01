local M = {}

function M.get(cp)
	return {
		rainbowcol1 = {bg = cp.katppuccino1, fg = cp.catppuccino6},
		rainbowcol2 = {bg = cp.katppuccino1, fg = cp.catppuccino8},
		rainbowcol3 = {bg = cp.katppuccino1, fg = cp.catppuccino9},
		rainbowcol4 = {bg = cp.katppuccino1, fg = cp.catppuccino10},
		rainbowcol5 = {bg = cp.katppuccino1, fg = cp.catppuccino5},
		rainbowcol6 = {bg = cp.katppuccino1, fg = cp.katppuccino2},
		rainbowcol7 = {bg = cp.katppuccino1, fg = cp.katppuccino0},
	}
end

return M
