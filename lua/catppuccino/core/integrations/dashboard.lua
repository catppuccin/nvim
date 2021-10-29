local M = {}

function M.get(cp)
	return {
		DashboardShortCut = { fg = cp.cyan },
		DashboardHeader = { fg = cp.yellow },
		DashboardCenter = { fg = cp.green },
		DashboardFooter = { fg = cp.orange, style = "italic" },
	}
end

return M
