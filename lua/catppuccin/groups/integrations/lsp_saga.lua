local M = {}

function M.custom_colors()
	local C = require("catppuccin.palettes").get_palette()
	return {
		--float window normal bakcground color
		normal_bg = C.base,
		--title background color
		title_bg = C.green,
		red = "#e95678",
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
		DiagnosticError = { fg = C.red },
		DiagnosticWarning = { fg = C.yellow },
		DiagnosticInformation = { fg = C.blue },
		DiagnosticHint = { fg = C.rosewater },
		LspFloatWinNormal = { bg = C.crust },
		LspFloatWinBorder = { fg = C.blue },
		LspSagaBorderTitle = { fg = C.flamingo },
		LspSagaHoverBorder = { fg = C.blue },
		LspSagaRenameBorder = { fg = C.teal },
		LspSagaDefPreviewBorder = { fg = C.teal },
		LspSagaCodeActionBorder = { fg = C.blue },
		LspSagaFinderSelection = { fg = C.surface1 },
		LspSagaCodeActionTitle = { fg = C.blue },
		LspSagaCodeActionContent = { fg = C.lavender },
		LspSagaSignatureHelpBorder = { fg = C.red },
		ReferencesCount = { fg = C.lavender },
		DefinitionCount = { fg = C.lavender },
		DefinitionIcon = { fg = C.blue },
		ReferencesIcon = { fg = C.blue },
		TargetWord = { fg = C.flamingo },
	}
end

return M
