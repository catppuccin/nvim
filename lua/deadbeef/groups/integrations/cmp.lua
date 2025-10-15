local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

function M.get()
	return {
		-- Main completion items
		CmpItemAbbr = { fg = C.text },
		CmpItemAbbrDeprecated = { fg = C.overlay0, style = { "strikethrough" } },
		CmpItemAbbrMatch = { fg = C.yellow, style = { "bold" } },
		CmpItemAbbrMatchFuzzy = { fg = C.yellow, style = { "bold" } },

		-- Menu and additional info
		CmpItemMenu = { fg = C.overlay1 },
		CmpItemKind = { fg = C.blue },

		-- Different completion kinds
		CmpItemKindText = { fg = C.text },
		CmpItemKindMethod = { fg = C.green },
		CmpItemKindFunction = { fg = C.green },
		CmpItemKindConstructor = { fg = C.blue },
		CmpItemKindField = { fg = C.teal },
		CmpItemKindVariable = { fg = C.blue },
		CmpItemKindClass = { fg = C.mauve },
		CmpItemKindInterface = { fg = C.mauve },
		CmpItemKindModule = { fg = C.blue },
		CmpItemKindProperty = { fg = C.teal },
		CmpItemKindUnit = { fg = C.peach },
		CmpItemKindValue = { fg = C.red },
		CmpItemKindEnum = { fg = C.mauve },
		CmpItemKindKeyword = { fg = C.blue },
		CmpItemKindSnippet = { fg = C.green },
		CmpItemKindColor = { fg = C.pink },
		CmpItemKindFile = { fg = C.blue },
		CmpItemKindReference = { fg = C.teal },
		CmpItemKindFolder = { fg = C.blue },
		CmpItemKindEnumMember = { fg = C.teal },
		CmpItemKindConstant = { fg = C.red },
		CmpItemKindStruct = { fg = C.mauve },
		CmpItemKindEvent = { fg = C.yellow },
		CmpItemKindOperator = { fg = C.teal },
		CmpItemKindTypeParameter = { fg = C.mauve },

		-- Completion window
		CmpDocumentation = { fg = C.text, bg = C.surface0 },
		CmpDocumentationBorder = { fg = C.overlay1, bg = C.surface0 },

		-- Signature help
		CmpSignatureHelp = { fg = C.text, bg = C.surface0 },
		CmpSignatureHelpBorder = { fg = C.overlay1, bg = C.surface0 },
	}
end

return M