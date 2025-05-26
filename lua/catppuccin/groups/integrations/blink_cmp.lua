local M = {}

function M.get()
	return {
		BlinkCmpLabel = { fg = C.overlay2 },
		BlinkCmpLabelDeprecated = { fg = C.overlay0, style = { "strikethrough" } },
		BlinkCmpKind = { fg = C.blue },
		BlinkCmpMenu = { link = "Pmenu" },
		BlinkCmpMenuBorder = { fg = C.blue },
		BlinkCmpLabelMatch = { fg = C.text, style = { "bold" } },
		BlinkCmpMenuSelection = { bg = C.surface1, style = { "bold" } },
		BlinkCmpScrollBarGutter = { bg = C.surface1 },
		BlinkCmpScrollBarThumb = { bg = C.overlay0 },
		BlinkCmpLabelDescription = { fg = C.overlay0 },
		BlinkCmpLabelDetail = { fg = C.overlay0 },

		BlinkCmpKindText = { fg = C.green },
		BlinkCmpKindMethod = { fg = C.blue },
		BlinkCmpKindFunction = { fg = C.blue },
		BlinkCmpKindConstructor = { fg = C.blue },
		BlinkCmpKindField = { fg = C.green },
		BlinkCmpKindVariable = { fg = C.flamingo },
		BlinkCmpKindClass = { fg = C.yellow },
		BlinkCmpKindInterface = { fg = C.yellow },
		BlinkCmpKindModule = { fg = C.blue },
		BlinkCmpKindProperty = { fg = C.blue },
		BlinkCmpKindUnit = { fg = C.green },
		BlinkCmpKindValue = { fg = C.peach },
		BlinkCmpKindEnum = { fg = C.yellow },
		BlinkCmpKindKeyword = { fg = C.mauve },
		BlinkCmpKindSnippet = { fg = C.flamingo },
		BlinkCmpKindColor = { fg = C.red },
		BlinkCmpKindFile = { fg = C.blue },
		BlinkCmpKindReference = { fg = C.red },
		BlinkCmpKindFolder = { fg = C.blue },
		BlinkCmpKindEnumMember = { fg = C.teal },
		BlinkCmpKindConstant = { fg = C.peach },
		BlinkCmpKindStruct = { fg = C.blue },
		BlinkCmpKindEvent = { fg = C.blue },
		BlinkCmpKindOperator = { fg = C.sky },
		BlinkCmpKindTypeParameter = { fg = C.maroon },
		BlinkCmpKindCopilot = { fg = C.teal },
	}
end

return M
