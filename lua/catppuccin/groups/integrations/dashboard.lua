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
		DashboardKey = { fg = C.peach },
		DashboardDesc = { fg = C.blue },
		DashboardIcon = { fg = C.pink, bold = true },
	}
end

return M
