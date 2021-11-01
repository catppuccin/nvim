local M = {}
local util = require("catppuccino.utils.util")

function M.get(cp)
	return {
		NeogitBranch = { fg = cp.catppuccino5 },
		NeogitRemote = { fg = cp.catppuccino5 },
		NeogitHunkHeader = { bg = cp.catppuccino10, fg = cp.catppuccino11 },
		NeogitHunkHeaderHighlight = { bg = cp.catppuccino13, fg = cp.catppuccino10 },
		NeogitDiffContextHighlight = { bg = cp.catppuccino16, fg = cp.catppuccino0 },
		NeogitDiffDeleteHighlight = { fg = cp.catppuccino6, bg = cp.catppuccino2 },
		NeogitDiffAddHighlight = { fg = cp.catppuccino10, bg = cp.catppuccino2 },
	}
end

return M
