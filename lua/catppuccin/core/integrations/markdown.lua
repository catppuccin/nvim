local M = {}

function M.get(cp)
	return {
		markdownHeadingDelimiter = { fg = cp.peach, style = "bold" },
		markdownCode = { fg = cp.flamingo },
		markdownCodeBlock = { fg = cp.flamingo },
		markdownLinkText = { fg = cp.blue, style = "underline" },
		markdownH1 = { fg = cp.lavender },
		markdownH2 = { fg = cp.mauve },
		markdownH3 = { fg = cp.green },
		markdownH4 = { fg = cp.yellow },
		markdownH5 = { fg = cp.pink },
		markdownH6 = { fg = cp.teal },
	}
end

return M
