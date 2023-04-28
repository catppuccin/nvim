local M = {}

function M.get()
	return {
        AlphaShortcut = { fg = C.pink },
        AlphaHeader = { fg = C.blue },
        DashboardCenter = { fg = C.green },
        AlphaFooter = { fg = C.yellow, style = { "italic" } },
	}
end

return M
