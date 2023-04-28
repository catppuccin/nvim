local M = {}

function M.get()
	return {
        AlphaShortcut = { fg = C.green },
        AlphaHeader = { fg = C.blue },
        AlphaButtons = { fg = C.pink },
        AlphaFooter = { fg = C.yellow, style = { "italic" } },
    }
end

return M
