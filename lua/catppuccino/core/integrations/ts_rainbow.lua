local M = {}

function M.get(cpt)
	return {
		rainbowcol1 = {bg = cpt.bg, fg = cpt.red},
		rainbowcol2 = {bg = cpt.bg, fg = cpt.green},
		rainbowcol3 = {bg = cpt.bg, fg = cpt.yellow},
		rainbowcol4 = {bg = cpt.bg, fg = cpt.blue},
		rainbowcol5 = {bg = cpt.bg, fg = cpt.magenta},
		rainbowcol6 = {bg = cpt.bg, fg = cpt.cyan},
		rainbowcol7 = {bg = cpt.bg, fg = cpt.white},
	}
end

return M
