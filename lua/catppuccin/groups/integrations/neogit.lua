local M = {}

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
			bg = ucolors.darken(cp.red, 0.345, cp.base),
			fg = ucolors.lighten(cp.red, 0.850, cp.text),
		},
		NeogitDiffAddHighlight = {
			bg = ucolors.darken(cp.green, 0.345, cp.base),
			fg = ucolors.lighten(cp.green, 0.850, cp.text),
		},
		NeogitDiffDelete = {
			bg = ucolors.darken(cp.red, 0.095, cp.base),
			fg = ucolors.darken(cp.red, 0.800, cp.base),
		},
		NeogitDiffAdd = {
			bg = ucolors.darken(cp.green, 0.095, cp.base),
			fg = ucolors.darken(cp.green, 0.800, cp.base),
		},
		NeogitCommitViewHeader = {
			bg = ucolors.darken(cp.blue, 0.300, cp.base),
			fg = ucolors.lighten(cp.blue, 0.800, cp.text),
		},
	}
end

return M
