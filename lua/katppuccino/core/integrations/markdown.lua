local M = {}

function M.get(cp)
	return {
		markdownHeadingDelimiter = { fg = cp.katppuccino6, style = "bold" },
		markdownCode = { fg = cp.katppuccino2 },
		markdownCodeBlock = { fg = cp.katppuccino2 },
		markdownH1 = { fg = cp.katppuccino4, style = "bold" },
		markdownH2 = { fg = cp.katppuccino9, style = "bold" },
		markdownLinkText = { fg = cp.katppuccino9, style = "underline" },
	}
end

return M
