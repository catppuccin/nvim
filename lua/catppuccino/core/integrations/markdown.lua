local M = {}

function M.get(cpt)
	return {
		markdownHeadingDelimiter = { fg = cpt.orange, style = "bold" },
		markdownCode = { fg = cpt.cyan },
		markdownCodeBlock = { fg = cpt.cyan },
		markdownH1 = { fg = cpt.magenta, style = "bold" },
		markdownH2 = { fg = cpt.blue, style = "bold" },
		markdownLinkText = { fg = cpt.blue, style = "underline" },
	}
end

return M
