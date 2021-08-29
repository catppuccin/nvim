local M = {}
local util = require("catppuccino.utils.util")

function M.get(cpt)
	return {
		NeogitBranch = { fg = cpt.magenta },
		NeogitRemote = { fg = cpt.pink },
		NeogitHunkHeader = { bg = cpt.bg_highlight, fg = cpt.fg },
		NeogitHunkHeaderHighlight = { bg = cpt.fg_gutter, fg = cpt.blue },
		NeogitDiffContextHighlight = { bg = util.darken(cpt.fg_gutter, 0.5), fg = cpt.fg_alt },
		NeogitDiffDeleteHighlight = { fg = cpt.diff.delete, bg = cpt.bg },
		NeogitDiffAddHighlight = { fg = cpt.diff.add, bg = cpt.bg },
	}
end

return M
