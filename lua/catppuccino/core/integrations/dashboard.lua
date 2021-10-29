local M = {}

function M.get(cp)
	return {
		DashboardShortCut = { fg = cp.catppuccino3 },
		DashboardHeader = { fg = cp.yellow },
		DashboardCenter = { fg = cp.green },
		DashboardFooter = { fg = cp.catppuccino7, style = "italic" },
	}
end

return M
