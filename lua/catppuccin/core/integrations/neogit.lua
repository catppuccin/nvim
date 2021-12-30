local M = {}

function M.get(cp)
	return {
		NeogitBranch = { fg = cp.pink },
		NeogitRemote = { fg = cp.pink },
		NeogitHunkHeader = { bg = cp.blue, fg = cp.white },
		NeogitHunkHeaderHighlight = { bg = cp.black4, fg = cp.blue },
		NeogitDiffContextHighlight = { bg = cp.gray2, fg = cp.green },
		NeogitDiffDeleteHighlight = { fg = cp.red, bg = cp.black2 },
		NeogitDiffAddHighlight = { fg = cp.blue, bg = cp.black2 },
	}
end

return M
