local M = {}

function M.get()
	local background = O.integrations.navic.custom_bg and O.integrations.navic.custom_bg or C.none
	if O.integrations.navic.custom_bg == "lualine" then background = C.mantle end

	return {
		NavicIconsFile = { fg = C.blue, bg = background },
		NavicIconsModule = { fg = C.blue, bg = background },
		NavicIconsNamespace = { fg = C.blue, bg = background },
		NavicIconsPackage = { fg = C.blue, bg = background },
		NavicIconsClass = { fg = C.yellow, bg = background },
		NavicIconsMethod = { fg = C.blue, bg = background },
		NavicIconsProperty = { fg = C.green, bg = background },
		NavicIconsField = { fg = C.green, bg = background },
		NavicIconsConstructor = { fg = C.blue, bg = background },
		NavicIconsEnum = { fg = C.green, bg = background },
		NavicIconsInterface = { fg = C.yellow, bg = background },
		NavicIconsFunction = { fg = C.blue, bg = background },
		NavicIconsVariable = { fg = C.flamingo, bg = background },
		NavicIconsConstant = { fg = C.peach, bg = background },
		NavicIconsString = { fg = C.green, style = O.styles.strings, bg = background },
		NavicIconsNumber = { fg = C.peach, bg = background },
		NavicIconsBoolean = { fg = C.peach, bg = background },
		NavicIconsArray = { fg = C.peach, bg = background },
		NavicIconsObject = { fg = C.peach, bg = background },
		NavicIconsKey = { fg = C.pink, style = O.styles.keywords, bg = background },
		NavicIconsNull = { fg = C.peach, bg = background },
		NavicIconsEnumMember = { fg = C.red, bg = background },
		NavicIconsStruct = { fg = C.blue, bg = background },
		NavicIconsEvent = { fg = C.blue, bg = background },
		NavicIconsOperator = { fg = C.sky, bg = background },
		NavicIconsTypeParameter = { fg = C.blue, bg = background },
		NavicText = { fg = C.sapphire, bg = background },
		NavicSeparator = { fg = C.text, bg = background },
	}
end

return M
