local M = {}
local util = require("catppuccino.utils.util")

function M.get(cp)
	return {
		NeogitBranch = { fg = cp.magenta },
		NeogitRemote = { fg = cp.pink },
		NeogitHunkHeader = { bg = cp.bg_highlight, fg = cp.fg },
		NeogitHunkHeaderHighlight = { bg = cp.fg_gutter, fg = cp.blue },
		NeogitDiffContextHighlight = { bg = util.darken(cp.fg_gutter, 0.5), fg = cp.fg_alt },
		NeogitDiffDeleteHighlight = { fg = cp.diff.delete, bg = cp.bg },
		NeogitDiffAddHighlight = { fg = cp.diff.add, bg = cp.bg },
	}
end

return M
