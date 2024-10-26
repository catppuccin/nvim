local M = {}

function M.get()
	return {
		BlinkCmpMenu = { fg = C.text, bg = O.transparent_background and C.none or C.base },
		BlinkCmpMenuBorder = { fg = C.overlay0, bg = O.transparent_background and C.none or C.base },
		BlinkCmpMenuSelection = { bg = C.surface0 },
		BlinkCmpLabel = { fg = C.text },
		BlinkCmpLabelDeprecated = { fg = C.overlay0, style = { "strikethrough" } },
		BlinkCmpDocBorder = { fg = C.overlay0, bg = O.transparent_background and C.none or C.base },
		BlinkCmpDoc = { fg = C.text, bg = O.transparent_background and C.none or C.base },

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
	}
end

return M
