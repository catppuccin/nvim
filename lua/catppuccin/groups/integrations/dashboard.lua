local M = {}

function M.get()
	return {
		DashboardShortCut = { fg = C.pink },
		DashboardHeader = { fg = C.blue },
		DashboardCenter = { fg = C.green },
		DashboardFooter = { fg = C.yellow, style = { "italic" } },
	}
end

return M
