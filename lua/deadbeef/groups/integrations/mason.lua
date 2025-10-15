local M = {}

function M.get()
	return {
		MasonNormal = { fg = C.text, bg = C.base },
		MasonHeader = { fg = C.text, bg = C.base, style = { "bold" } },
		MasonHeaderSecondary = { fg = C.blue, bg = C.base, style = { "bold" } },
		MasonHighlight = { fg = C.yellow, bg = C.base },
		MasonHighlightBlock = { fg = C.text, bg = C.base, style = { "reverse" } },
		MasonHighlightBlockBold = { fg = C.text, bg = C.base, style = { "reverse", "bold" } },
		MasonHighlightSecondary = { fg = C.blue, bg = C.base },
		MasonHighlightBlockSecondary = { fg = C.blue, bg = C.base, style = { "reverse" } },
		MasonHighlightBlockBoldSecondary = { fg = C.blue, bg = C.base, style = { "reverse", "bold" } },
		MasonMuted = { fg = C.overlay0, bg = C.base },
		MasonMutedBlock = { fg = C.overlay0, bg = C.base, style = { "reverse" } },
		MasonMutedBlockBold = { fg = C.overlay0, bg = C.base, style = { "reverse", "bold" } },
		MasonError = { fg = C.red, bg = C.base },
	}
end

return M