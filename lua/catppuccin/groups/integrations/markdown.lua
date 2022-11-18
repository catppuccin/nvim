local M = {}

function M.get()
	return {
		markdownHeadingDelimiter = { fg = C.peach, style = { "bold" } },
		markdownCode = { fg = C.flamingo },
		markdownCodeBlock = { fg = C.flamingo },
		markdownLinkText = { fg = C.blue, style = { "underline" } },
		markdownH1 = { fg = C.lavender },
		markdownH2 = { fg = C.mauve },
		markdownH3 = { fg = C.green },
		markdownH4 = { fg = C.yellow },
		markdownH5 = { fg = C.pink },
		markdownH6 = { fg = C.teal },
	}
end

return M
