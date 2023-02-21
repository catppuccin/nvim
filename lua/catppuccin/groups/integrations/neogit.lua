local M = {}

function M.get()
	return {
		NeogitBranch = { fg = C.pink },
		NeogitRemote = { fg = C.pink },
		NeogitHunkHeader = {
			bg = U.darken(C.blue, 0.095, C.base),
			fg = U.darken(C.blue, 0.5, C.base),
		},
		NeogitHunkHeaderHighlight = {
			bg = U.darken(C.blue, 0.215, C.base),
			fg = C.blue,
		},
		NeogitDiffContextHighlight = {
			bg = U.darken(C.blue, 0.065, C.base),
			fg = C.text,
		},
		NeogitDiffDeleteHighlight = {
			bg = U.darken(C.red, 0.345, C.base),
			fg = U.lighten(C.red, 0.850, C.text),
		},
		NeogitDiffAddHighlight = {
			bg = U.darken(C.green, 0.345, C.base),
			fg = U.lighten(C.green, 0.850, C.text),
		},
		NeogitDiffDelete = {
			bg = U.darken(C.red, 0.095, C.base),
			fg = U.darken(C.red, 0.800, C.base),
		},
		NeogitDiffAdd = {
			bg = U.darken(C.green, 0.095, C.base),
			fg = U.darken(C.green, 0.800, C.base),
		},
		NeogitCommitViewHeader = {
			bg = U.darken(C.blue, 0.300, C.base),
			fg = U.lighten(C.blue, 0.800, C.text),
		},
		NeogitNotificationInfo = { fg = C.blue },
		NeogitNotificationWarning = { fg = C.yellow },
		NeogitNotificationError = { fg = C.red },
	}
end

return M
