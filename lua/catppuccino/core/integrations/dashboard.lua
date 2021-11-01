local M = {}

function M.get(cp)
	return {
		DashboardShortCut = { fg = cp.katppuccino2 },
		DashboardHeader = { fg = cp.catppuccino9 },
		DashboardCenter = { fg = cp.catppuccino8 },
		DashboardFooter = { fg = cp.catppuccino7, style = "italic" },
	}
end

return M
