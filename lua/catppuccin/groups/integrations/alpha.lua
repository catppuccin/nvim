local M = {}

function M.get()
	return {
        AlphaShortcut = { fg = colors.pink },
        AlphaHeader = { fg = colors.blue },
        DashboardCenter = { fg = colors.green },
        AlphaFooter = { fg = colors.yellow, style = { "italic" } },
	}
end

return M
