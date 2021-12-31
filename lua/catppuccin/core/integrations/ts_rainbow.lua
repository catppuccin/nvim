local M = {}

function M.get(cp)
	return {
		rainbowcol1 = {bg = cp.black2, fg = cp.red},
		rainbowcol2 = {bg = cp.black2, fg = cp.teal},
		rainbowcol3 = {bg = cp.black2, fg = cp.yellow},
		rainbowcol4 = {bg = cp.black2, fg = cp.blue},
		rainbowcol5 = {bg = cp.black2, fg = cp.pink},
		rainbowcol6 = {bg = cp.black2, fg = cp.flamingo},
		rainbowcol7 = {bg = cp.black2, fg = cp.green},
	}
end

return M
