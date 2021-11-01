local M = {}

function M.get(cp)
	return {
		DashboardShortCut = { fg = cp.katppuccino2 },
		DashboardHeader = { fg = cp.katppuccino8 },
		DashboardCenter = { fg = cp.katppuccino7 },
		DashboardFooter = { fg = cp.katppuccino6, style = "italic" },
	}
end

return M
