local M = {}

function M.get(cp)
	return {
		markdownHeadingDelimiter = { fg = cp.orange, style = "bold" },
		markdownCode = { fg = cp.catppuccino3 },
		markdownCodeBlock = { fg = cp.catppuccino3 },
		markdownH1 = { fg = cp.magenta, style = "bold" },
		markdownH2 = { fg = cp.blue, style = "bold" },
		markdownLinkText = { fg = cp.blue, style = "underline" },
	}
end

return M
