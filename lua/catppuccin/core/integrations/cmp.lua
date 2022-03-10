local M = {}

function M.get(cp)
	return {
		CmpItemAbbr = { fg = cp.gray2 },
		CmpItemAbbrDeprecated = { fg = cp.gray0, style = "strikethrough" },
		CmpItemKind = { fg = cp.blue },
		CmpItemMenu = { fg = cp.white },
		CmpItemAbbrMatch = { fg = cp.white, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = cp.white, style = "bold" },

		-- kind support
		CmpItemKindSnippet = { fg = cp.mauve },
		CmpItemKindKeyword = { fg = cp.red },
		CmpItemKindText = { fg = cp.teal },
		CmpItemKindMethod = { fg = cp.blue },
		CmpItemKindConstructor = { fg = cp.blue },
		CmpItemKindFunction = { fg = cp.blue },
		CmpItemKindFolder = { fg = cp.blue },
		CmpItemKindModule = { fg = cp.blue },
		CmpItemKindConstant = { fg = cp.peach },
		CmpItemKindField = { fg = cp.green },
		CmpItemKindProperty = { fg = cp.green },
		CmpItemKindEnum = { fg = cp.green },
		CmpItemKindUnit = { fg = cp.green },
		CmpItemKindClass = { fg = cp.yellow },
		CmpItemKindVariable = { fg = cp.flamingo },
		CmpItemKindFile = { fg = cp.blue },
		CmpItemKindInterface = { fg = cp.yellow },
		CmpItemKindColor = { fg = cp.red },
		CmpItemKindReference = { fg = cp.red },
		CmpItemKindEnumMember = { fg = cp.red },
		CmpItemKindStruct = { fg = cp.blue },
		CmpItemKindValue = { fg = cp.peach },
		CmpItemKindEvent = { fg = cp.blue },
		CmpItemKindOperator = { fg = cp.blue },
		CmpItemKindTypeParameter = { fg = cp.blue },
	}
end

return M
