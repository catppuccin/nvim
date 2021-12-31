local M = {}

function M.get(cp)
	return {
		markdownHeadingDelimiter = { fg = cp.peach, style = "bold" },
		markdownCode = { fg = cp.flamingo },
		markdownCodeBlock = { fg = cp.flamingo },
		markdownH1 = { fg = cp.pink, style = "bold" },
		markdownH2 = { fg = cp.blue, style = "bold" },
		markdownLinkText = { fg = cp.blue, style = "underline" },
	}
end

return M
