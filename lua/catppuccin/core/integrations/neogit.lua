local M = {}

function M.get(cp)
	return {
		NeogitBranch = { fg = cp.pink },
		NeogitRemote = { fg = cp.pink },
		NeogitHunkHeader = { bg = cp.blue, fg = cp.text },
		NeogitHunkHeaderHighlight = { bg = cp.base, fg = cp.blue },
		NeogitDiffContextHighlight = { bg = cp.mantle, fg = cp.overlay2 },
		NeogitDiffDeleteHighlight = { bg = cp.mantle, fg = cp.red },
		NeogitDiffAddHighlight = { bg = cp.mantle, fg = cp.green },
	}
end

return M
