local M = {}

function M.get(cp)
	return {
		DashboardShortCut = { fg = cp.catppuccino3 },
		DashboardHeader = { fg = cp.catppuccino9 },
		DashboardCenter = { fg = cp.catppuccino8 },
		DashboardFooter = { fg = cp.catppuccino7, style = "italic" },
	}
end

return M
