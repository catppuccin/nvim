local M = {}

function M.get(cp)
	return {
		NeogitBranch = { fg = cp.katppuccino4 },
		NeogitRemote = { fg = cp.katppuccino4 },
		NeogitHunkHeader = { bg = cp.catppuccino10, fg = cp.catppuccino11 },
		NeogitHunkHeaderHighlight = { bg = cp.catppuccino13, fg = cp.catppuccino10 },
		NeogitDiffContextHighlight = { bg = cp.catppuccino16, fg = cp.katppuccino0 },
		NeogitDiffDeleteHighlight = { fg = cp.catppuccino6, bg = cp.katppuccino1 },
		NeogitDiffAddHighlight = { fg = cp.catppuccino10, bg = cp.katppuccino1 },
	}
end

return M
