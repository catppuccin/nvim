local M = {}

function M.get()
	return {
		MasonNormal = { fg = C.text, bg = C.surface0 },
		MasonHeader = { fg = C.text, bg = C.surface0, style = { "bold" } },
		MasonHeaderSecondary = { fg = C.blue, bg = C.surface0, style = { "bold" } },
		MasonHighlight = { fg = C.yellow, bg = C.surface0 },
		MasonHighlightBlock = { fg = C.text, bg = C.surface0, style = { "reverse" } },
		MasonHighlightBlockBold = { fg = C.text, bg = C.surface0, style = { "reverse", "bold" } },
		MasonHighlightSecondary = { fg = C.blue, bg = C.surface0 },
		MasonHighlightBlockSecondary = { fg = C.blue, bg = C.surface0, style = { "reverse" } },
		MasonHighlightBlockBoldSecondary = { fg = C.blue, bg = C.surface0, style = { "reverse", "bold" } },
		MasonMuted = { fg = C.overlay0, bg = C.surface0 },
		MasonMutedBlock = { fg = C.overlay0, bg = C.surface0, style = { "reverse" } },
		MasonMutedBlockBold = { fg = C.overlay0, bg = C.surface0, style = { "reverse", "bold" } },
		MasonError = { fg = C.red, bg = C.surface0 },
	}
end

return M