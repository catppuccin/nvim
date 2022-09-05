local M = {}

function M.get()
	return {
		DashboardShortCut = { fg = cp.pink },
		DashboardHeader = { fg = cp.blue },
		DashboardCenter = { fg = cp.green },
		DashboardFooter = { fg = cp.yellow, style = { "italic" } },
	}
end

return M
