local M = {}

function M.get(cp)
	return {
		rainbowcol1 = {catppuccino2 = cp.catppuccino2, fg = cp.red},
		rainbowcol2 = {catppuccino2 = cp.catppuccino2, fg = cp.green},
		rainbowcol3 = {catppuccino2 = cp.catppuccino2, fg = cp.yellow},
		rainbowcol4 = {catppuccino2 = cp.catppuccino2, fg = cp.blue},
		rainbowcol5 = {catppuccino2 = cp.catppuccino2, fg = cp.catppuccino5},
		rainbowcol6 = {catppuccino2 = cp.catppuccino2, fg = cp.catppuccino3},
		rainbowcol7 = {catppuccino2 = cp.catppuccino2, fg = cp.catppuccino0},
	}
end

return M
