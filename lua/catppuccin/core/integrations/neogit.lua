local M = {}

function M.get(cp)
	return {
		NeogitBranch = { fg = cp.catppuccin4 },
		NeogitRemote = { fg = cp.catppuccin4 },
		NeogitHunkHeader = { bg = cp.catppuccin9, fg = cp.catppuccin10 },
		NeogitHunkHeaderHighlight = { bg = cp.catppuccin12, fg = cp.catppuccin9 },
		NeogitDiffContextHighlight = { bg = cp.catppuccin15, fg = cp.catppuccin0 },
		NeogitDiffDeleteHighlight = { fg = cp.catppuccin5, bg = cp.catppuccin1 },
		NeogitDiffAddHighlight = { fg = cp.catppuccin9, bg = cp.catppuccin1 },
	}
end

return M
