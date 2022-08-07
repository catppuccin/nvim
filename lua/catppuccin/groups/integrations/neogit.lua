local M = {}
local ucolors = require("catppuccin.utils.colors")

function M.get()
	return {
		NeogitBranch = { fg = cp.pink },
		NeogitRemote = { fg = cp.pink },
		NeogitHunkHeader = {
			bg = ucolors.darken(cp.blue, 0.095, cp.base),
			fg = ucolors.darken(cp.blue, 0.5, cp.base),
		},
		NeogitHunkHeaderHighlight = {
			bg = ucolors.darken(cp.blue, 0.215, cp.base),
			fg = cp.blue,
		},
		NeogitDiffContextHighlight = {
			bg = ucolors.darken(cp.blue, 0.065, cp.base),
			fg = cp.text,
		},
		NeogitDiffDeleteHighlight = {
			bg = ucolors.darken(cp.red, 0.095, cp.base),
			fg = cp.red,
		},
		NeogitDiffAddHighlight = {
			bg = ucolors.darken(cp.green, 0.095, cp.base),
			fg = cp.green,
		},
		NeogitCommitViewHeader = {
			bg = ucolors.darken(cp.blue, 0.300, cp.base),
			fg = ucolors.lighten(cp.blue, 0.800, cp.text),
		},
		NeogitDiffDelete = {
			bg = ucolors.darken(cp.red, 0.125, cp.base),
			fg = ucolors.darken(cp.red, 0.445, cp.base),
		},
		NeogitDiffAdd = {
			bg = ucolors.darken(cp.green, 0.125, cp.base),
			fg = ucolors.darken(cp.green, 0.445, cp.base),
		},
	}
end

return M
