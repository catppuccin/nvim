local M = {}

function M.get(cp)
	return {
		NeogitBranch = { fg = cp.pink },
		NeogitRemote = { fg = cp.pink },
		NeogitHunkHeader = { bg = cp.blue, fg = cp.text },
		NeogitHunkHeaderHighlight = { bg = cp.base2, fg = cp.blue },
		NeogitDiffContextHighlight = { bg = cp.base1, fg = cp.overlay2 },
		NeogitDiffDeleteHighlight = { bg = cp.base1, fg = cp.red },
		NeogitDiffAddHighlight = { bg = cp.base1, fg = cp.green },
	}
end

return M
