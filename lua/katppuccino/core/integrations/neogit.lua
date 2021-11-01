local M = {}

function M.get(cp)
	return {
		NeogitBranch = { fg = cp.katppuccino4 },
		NeogitRemote = { fg = cp.katppuccino4 },
		NeogitHunkHeader = { bg = cp.katppuccino9, fg = cp.katppuccino10 },
		NeogitHunkHeaderHighlight = { bg = cp.katppuccino12, fg = cp.katppuccino9 },
		NeogitDiffContextHighlight = { bg = cp.katppuccino15, fg = cp.katppuccino0 },
		NeogitDiffDeleteHighlight = { fg = cp.katppuccino5, bg = cp.katppuccino1 },
		NeogitDiffAddHighlight = { fg = cp.katppuccino9, bg = cp.katppuccino1 },
	}
end

return M
