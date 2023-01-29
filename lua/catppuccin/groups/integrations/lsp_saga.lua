local M = {}

function M.custom_colors()
	local C = require("catppuccin.palettes").get_palette()
	return {
		normal_bg = C.base,
		title_bg = C.green,
		red = C.red,
		magenta = C.maroon,
		orange = C.peach,
		yellow = C.yellow,
		green = C.green,
		cyan = C.sky,
		blue = C.blue,
		purple = C.mauve,
		white = C.text,
		black = C.crust,
	}
end

function M.custom_kind()
	local C = require("catppuccin.palettes").get_palette()
	return {
		File = { " ", C.text },
		Module = { " ", C.blue },
		Namespace = { " ", C.peach },
		Package = { " ", C.mauve },
		Class = { " ", C.mauve },
		Method = { " ", C.mauve },
		Property = { " ", C.sky },
		Field = { " ", C.teal },
		Constructor = { " ", C.blue },
		Enum = { "了", C.green },
		Interface = { " ", C.peach },
		Function = { " ", C.mauve },
		Variable = { " ", C.blue },
		Constant = { " ", C.sky },
		String = { " ", C.green },
		Number = { " ", C.green },
		Boolean = { " ", C.peach },
		Array = { " ", C.blue },
		Object = { " ", C.peach },
		Key = { " ", C.red },
		Null = { " ", C.red },
		EnumMember = { " ", C.green },
		Struct = { " ", C.mauve },
		Event = { " ", C.mauve },
		Operator = { " ", C.green },
		TypeParameter = { " ", C.green },
		TypeAlias = { " ", C.green },
		Parameter = { " ", C.blue },
		StaticMethod = { "ﴂ ", C.peach },
		Macro = { " ", C.red },
	}
end

function M.get()
	return {
		TitleString = { fg = C.text },
		TitleIcon = { fg = C.blue },
		SagaBorder = { fg = C.blue, bg = C.none },
		SagaNormal = { bg = O.transparent_background and C.none or C.base },
		SagaExpand = { fg = C.green },
		SagaCollapse = { fg = C.green },
		SagaBeacon = { bg = U.darken(C.surface0, 0.8, C.crust) },
		ActionPreviewTitle = { fg = C.mauve, bg = O.transparent_background and C.none or C.base },
		CodeActionText = { fg = C.green },
		CodeActionNumber = { fg = C.pink },
		FinderSelection = { fg = C.blue, style = { "bold" } },
		FinderFileName = { fg = C.text },
		FinderIcon = { fg = C.flamingo },
		FinderCount = { fg = C.lavender },
		FinderType = { fg = C.flamingo },
		FinderSpinnerTitle = { fg = C.mauve, style = { "bold" } },
		FinderSpinner = { fg = C.mauve, style = { "bold" } },
		FinderVirtText = { fg = C.overlay2 },
		RenameNormal = { fg = C.text },
		DiagnosticSource = { fg = C.overlay0 },
		DiagnosticPos = { fg = C.surface2 },
		DiagnosticWord = { fg = C.text },
		CallHierarchyIcon = { fg = C.mauve },
		CallHierarchyTitle = { fg = C.blue },
		SagaShadow = { bg = C.crust },
		OutlineIndent = { fg = C.overlay2 },
	}
end

return M
