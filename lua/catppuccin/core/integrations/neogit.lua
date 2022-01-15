local M = {}

function M.get(cp)
	return {
		NeogitBranch = { fg = cp.pink },
		NeogitRemote = { fg = cp.pink },
		NeogitHunkHeader = { bg = cp.blue, fg = cp.white },
		NeogitHunkHeaderHighlight = { bg = cp.black2, fg = cp.blue },
		NeogitDiffContextHighlight = { bg = cp.black1, fg = cp.gray2 },
		NeogitDiffDeleteHighlight = { bg = cp.black1, fg = cp.red },
		NeogitDiffAddHighlight = { bg = cp.black1, fg = cp.green },
	}
end

return M
