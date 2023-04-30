local M = {}

function M.get()
	return {
		DashboardShortCut = { fg = C.pink },
		DashboardHeader = { fg = C.blue },
		DashboardCenter = { fg = C.green },
		DashboardFooter = { fg = C.yellow, style = { "italic" } },
		DashboardMruTitle = { fg = C.sky },
		DashboardProjectTitle = { fg = C.sky },
		DashboardFiles = { fg = C.lavender },
	}
end

return M
