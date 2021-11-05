local M = {}

function M.get(cp)
	return {
		markdownHeadingDelimiter = { fg = cp.catppuccin6, style = "bold" },
		markdownCode = { fg = cp.catppuccin2 },
		markdownCodeBlock = { fg = cp.catppuccin2 },
		markdownH1 = { fg = cp.catppuccin4, style = "bold" },
		markdownH2 = { fg = cp.catppuccin9, style = "bold" },
		markdownLinkText = { fg = cp.catppuccin9, style = "underline" },
	}
end

return M
