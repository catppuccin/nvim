local M = {}

function M.get()
	return {
		NavicIconsFile = { fg = cp.blue, bg = "NONE" },
		NavicIconsModule = { fg = cp.blue, bg = "NONE" },
		NavicIconsNamespace = { fg = cp.blue, bg = "NONE" },
		NavicIconsPackage = { fg = cp.blue, bg = "NONE" },
		NavicIconsClass = { fg = cp.yellow, bg = "NONE" },
		NavicIconsMethod = { fg = cp.blue, bg = "NONE" },
		NavicIconsProperty = { fg = cp.green, bg = "NONE" },
		NavicIconsField = { fg = cp.green, bg = "NONE" },
		NavicIconsConstructor = { fg = cp.blue, bg = "NONE" },
		NavicIconsEnum = { fg = cp.green, bg = "NONE" },
		NavicIconsInterface = { fg = cp.yellow, bg = "NONE" },
		NavicIconsFunction = { fg = cp.blue, bg = "NONE" },
		NavicIconsVariable = { fg = cp.flamingo, bg = "NONE" },
		NavicIconsConstant = { fg = cp.peach, bg = "NONE" },
		NavicIconsString = { fg = cp.green, style = cnf.styles.strings, bg = "NONE" },
		NavicIconsNumber = { fg = cp.peach, bg = "NONE" },
		NavicIconsBoolean = { fg = cp.peach, bg = "NONE" },
		NavicIconsArray = { fg = cp.peach, bg = "NONE" },
		NavicIconsObject = { fg = cp.peach, bg = "NONE" },
		NavicIconsKey = { fg = cp.pink, style = cnf.styles.keywords, bg = "NONE" },
		NavicIconsNull = { fg = cp.peach, bg = "NONE" },
		NavicIconsEnumMember = { fg = cp.red, bg = "NONE" },
		NavicIconsStruct = { fg = cp.blue, bg = "NONE" },
		NavicIconsEvent = { fg = cp.blue, bg = "NONE" },
		NavicIconsOperator = { fg = cp.sky, bg = "NONE" },
		NavicIconsTypeParameter = { fg = cp.blue, bg = "NONE" },
		NavicText = { fg = cp.teal, bg = "NONE" },
		NavicSeparator = { fg = cp.text, bg = "NONE" },
	}
end

return M
