local M = {}

function M.get(cp)
	return {
		DashboardShortCut = { fg = cp.catppuccin4 },
		DashboardHeader = { fg = cp.catppuccin9 },
		DashboardCenter = { fg = cp.catppuccin0 },
		DashboardFooter = { fg = cp.catppuccin8, style = "italic" },
	}
end

return M
