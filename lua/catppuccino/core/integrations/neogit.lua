local M = {}
local util = require("catppuccino.utils.util")

function M.get(cp)
	return {
		NeogitBranch = { fg = cp.magenta },
		NeogitRemote = { fg = cp.pink },
		NeogitHunkHeader = { catppuccino2 = cp.catppuccino2_highlight, fg = cp.fg },
		NeogitHunkHeaderHighlight = { catppuccino2 = cp.fg_gutter, fg = cp.blue },
		NeogitDiffContextHighlight = { catppuccino2 = util.darken(cp.fg_gutter, 0.5), fg = cp.fg_alt },
		NeogitDiffDeleteHighlight = { fg = cp.diff.delete, catppuccino2 = cp.catppuccino2 },
		NeogitDiffAddHighlight = { fg = cp.diff.add, catppuccino2 = cp.catppuccino2 },
	}
end

return M
