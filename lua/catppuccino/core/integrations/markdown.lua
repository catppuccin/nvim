local M = {}

function M.get(cp)
	return {
		markdownHeadingDelimiter = { fg = cp.catppuccino7, style = "bold" },
		markdownCode = { fg = cp.katppuccino2 },
		markdownCodeBlock = { fg = cp.katppuccino2 },
		markdownH1 = { fg = cp.katppuccino4, style = "bold" },
		markdownH2 = { fg = cp.catppuccino10, style = "bold" },
		markdownLinkText = { fg = cp.catppuccino10, style = "underline" },
	}
end

return M
