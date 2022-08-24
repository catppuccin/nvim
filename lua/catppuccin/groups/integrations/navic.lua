local M = {}
local config = require("catppuccin.config").options
local background = config.transparent_background and "NONE" or cp.mantle

function M.get()
	return {
		NavicIconsFile = { fg = cp.blue, bg = background },
		NavicIconsModule = { fg = cp.blue, bg = background },
		NavicIconsNamespace = { fg = cp.blue, bg = background },
		NavicIconsPackage = { fg = cp.blue, bg = background },
		NavicIconsClass = { fg = cp.yellow, bg = background },
		NavicIconsMethod = { fg = cp.blue, bg = background },
		NavicIconsProperty = { fg = cp.green, bg = background },
		NavicIconsField = { fg = cp.green, bg = background },
		NavicIconsConstructor = { fg = cp.blue, bg = background },
		NavicIconsEnum = { fg = cp.green, bg = background },
		NavicIconsInterface = { fg = cp.yellow, bg = background },
		NavicIconsFunction = { fg = cp.blue, bg = background },
		NavicIconsVariable = { fg = cp.flamingo, bg = background },
		NavicIconsConstant = { fg = cp.peach, bg = background },
		NavicIconsString = { fg = cp.green, style = cnf.styles.strings, bg = background },
		NavicIconsNumber = { fg = cp.peach, bg = background },
		NavicIconsBoolean = { fg = cp.peach, bg = background },
		NavicIconsArray = { fg = cp.peach, bg = background },
		NavicIconsObject = { fg = cp.peach, bg = background },
		NavicIconsKey = { fg = cp.pink, style = cnf.styles.keywords, bg = background },
		NavicIconsNull = { fg = cp.peach, bg = background },
		NavicIconsEnumMember = { fg = cp.red, bg = background },
		NavicIconsStruct = { fg = cp.blue, bg = background },
		NavicIconsEvent = { fg = cp.blue, bg = background },
		NavicIconsOperator = { fg = cp.sky, bg = background },
		NavicIconsTypeParameter = { fg = cp.blue, bg = background },
		NavicText = { fg = cp.teal, bg = background },
		NavicSeparator = { fg = cp.text, bg = background },
	}
end

return M
