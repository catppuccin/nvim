local M = {}

function M.get(cp)
	return {
		rainbowcol1 = {bg = cp.bg, fg = cp.red},
		rainbowcol2 = {bg = cp.bg, fg = cp.green},
		rainbowcol3 = {bg = cp.bg, fg = cp.yellow},
		rainbowcol4 = {bg = cp.bg, fg = cp.blue},
		rainbowcol5 = {bg = cp.bg, fg = cp.magenta},
		rainbowcol6 = {bg = cp.bg, fg = cp.cyan},
		rainbowcol7 = {bg = cp.bg, fg = cp.catppuccino0},
	}
end

return M
