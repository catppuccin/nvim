local M = {}

function M.get(cp)
	return {
		CmpItemAbbr = { fg = cp.catppuccin11 },
		CmpItemAbbrDeprecated = { fg = cp.catppuccin11, stlye = "strikethrough" },
		CmpItemKind = { fg = cp.catppuccin9 },
		CmpItemMenu = { fg = cp.catppuccin10 },
		CmpItemAbbrMatch = { fg = cp.catppuccin10, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = cp.catppuccin10, style = "bold" },

		-- kind support
		CmpItemKindText = { fg = cp.catppuccin7 },
		CmpItemKindMethod = { fg = cp.catppuccin9 },
		CmpItemKindSnippet = { fg = cp.catppuccin9 },
		CmpItemKindConstructor = { fg = cp.catppuccin9 },
		CmpItemKindFunction = { fg = cp.catppuccin9 },
		CmpItemKindFolder = { fg = cp.catppuccin9 },
		CmpItemKindModule = { fg = cp.catppuccin9 },
		CmpItemKindConstant = { fg = cp.catppuccin6 },
		CmpItemKindField = { fg = cp.catppuccin0 },
		CmpItemKindProperty = { fg = cp.catppuccin0 },
		CmpItemKindEnum = { fg = cp.catppuccin0 },
		CmpItemKindUnit = { fg = cp.catppuccin0 },
		CmpItemKindKeyword = { fg = cp.catppuccin3 },
		CmpItemKindClass = { fg = cp.catppuccin8 },
		CmpItemKindVariable = { fg = cp.catppuccin2 },
		CmpItemKindFile = { fg = cp.catppuccin9 },
		CmpItemKindInterface = { fg = cp.catppuccin8 },
		CmpItemKindColor = { fg = cp.catppuccin5 },
		CmpItemKindReference = { fg = cp.catppuccin5 },
		CmpItemKindEnumMember = { fg = cp.catppuccin5 },
		CmpItemKindStruct = { fg = cp.catppuccin9 },
		CmpItemKindValue = { fg = cp.catppuccin6 },
		CmpItemKindEvent = { fg = cp.catppuccin9 },
		CmpItemKindOperator = { fg = cp.catppuccin9 },
		CmpItemKindTypeParameter = { fg = cp.catppuccin9 },
	}
end

return M
