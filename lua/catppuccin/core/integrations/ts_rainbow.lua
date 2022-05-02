local M = {}

function M.get(cp)
	local transparent_background = require("catppuccin.config").options.transparent_background
	local bg_highlight = transparent_background and "NONE" or cp.base2
	return {
		rainbowcol1 = {bg = bg_highlight, fg = cp.red},
		rainbowcol2 = {bg = bg_highlight, fg = cp.teal},
		rainbowcol3 = {bg = bg_highlight, fg = cp.yellow},
		rainbowcol4 = {bg = bg_highlight, fg = cp.blue},
		rainbowcol5 = {bg = bg_highlight, fg = cp.pink},
		rainbowcol6 = {bg = bg_highlight, fg = cp.flamingo},
		rainbowcol7 = {bg = bg_highlight, fg = cp.green},
	}
end

return M
