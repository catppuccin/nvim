local M = {}

function M.get(cp)
	return {
		DashboardShortCut = { fg = cp.catppuccin2 },
		DashboardHeader = { fg = cp.catppuccin8 },
		DashboardCenter = { fg = cp.catppuccin7 },
		DashboardFooter = { fg = cp.catppuccin6, style = "italic" },
	}
end

return M
