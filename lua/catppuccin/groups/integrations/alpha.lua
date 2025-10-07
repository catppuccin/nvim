local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

function M.get()
	return {
		AlphaShortcut = { fg = C.green },
		AlphaHeader = { fg = C.blue },
		AlphaHeaderLabel = { fg = C.peach },
		AlphaButtons = { fg = C.lavender },
		AlphaFooter = { fg = C.yellow, style = { "italic" } },
	}
end

return M
