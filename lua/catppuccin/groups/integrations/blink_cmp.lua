local M = {}

function M.get()
	return {
		BlinkCmpMenu = { bg = C.base },
		BlinkCmpMenuBorder = { fg = C.overlay0, bg = C.base },
		BlinkCmpMenuSelection = { bg = C.surface0 },
		BlinkCmpLabel = { fg = C.text },
		BlinkCmpLabelDeprecated = { fg = C.overlay0, style = { "strikethrough" } },
		BlinkCmpDocBorder = { fg = C.overlay0, bg = C.base },
		BlinkCmpDoc = { bg = C.base },

		BlinkCmpKindText = { fg = C.teal },
		BlinkCmpKindMethod = { fg = C.blue },
		BlinkCmpKindFunction = { fg = C.blue },
		BlinkCmpKindConstructor = { fg = C.blue },
		BlinkCmpKindField = { fg = C.green },
		BlinkCmpKindVariable = { fg = C.flamingo },
		BlinkCmpKindClass = { fg = C.yellow },
		BlinkCmpKindInterface = { fg = C.yellow },
		BlinkCmpKindModule = { fg = C.blue },
		BlinkCmpKindProperty = { fg = C.green },
		BlinkCmpKindUnit = { fg = C.green },
		BlinkCmpKindValue = { fg = C.peach },
		BlinkCmpKindEnum = { fg = C.green },
		BlinkCmpKindKeyword = { fg = C.red },
		BlinkCmpKindSnippet = { fg = C.mauve },
		BlinkCmpKindColor = { fg = C.red },
		BlinkCmpKindFile = { fg = C.blue },
		BlinkCmpKindReference = { fg = C.red },
		BlinkCmpKindFolder = { fg = C.blue },
		BlinkCmpKindEnumMember = { fg = C.red },
		BlinkCmpKindConstant = { fg = C.peach },
		BlinkCmpKindStruct = { fg = C.blue },
		BlinkCmpKindEvent = { fg = C.blue },
		BlinkCmpKindOperator = { fg = C.blue },
		BlinkCmpKindTypeParameter = { fg = C.blue },
	}
end

return M
