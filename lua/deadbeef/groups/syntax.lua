local M = {}

function M.get()
	return {
		Comment = { fg = C.overlay2, style = O.styles.comments },
		SpecialComment = { link = "Special" },
		Constant = { fg = C.red }, -- numbers, booleans, etc.
		String = { fg = C.yellow, style = O.styles.strings or {} },
		Character = { fg = C.green },
		Number = { fg = C.red, style = O.styles.numbers or {} },
		Float = { link = "Number" },
		Boolean = { fg = C.red, style = O.styles.booleans or {} },
		Identifier = { fg = C.blue, style = O.styles.variables or {} },
		Function = { fg = C.green, style = O.styles.functions or {} },
		Statement = { fg = C.blue },
		Conditional = { fg = C.blue, style = O.styles.conditionals or {} },
		Repeat = { fg = C.blue, style = O.styles.loops or {} },
		Label = { fg = C.blue },
		Operator = { fg = C.teal, style = O.styles.operators or {} },
		Keyword = { fg = C.blue, style = O.styles.keywords or {} },
		Exception = { fg = C.blue, style = O.styles.keywords or {} },

		PreProc = { fg = C.mauve },
		Include = { fg = C.mauve, style = O.styles.keywords or {} },
		Define = { link = "PreProc" },
		Macro = { fg = C.mauve },
		PreCondit = { link = "PreProc" },

		StorageClass = { fg = C.blue },
		Structure = { fg = C.mauve },
		Special = { fg = C.teal },
		Type = { fg = C.mauve, style = O.styles.types or {} },
		Typedef = { link = "Type" },
		SpecialChar = { link = "Special" },
		Tag = { fg = C.mauve, style = { "bold" } },
		Delimiter = { fg = C.teal },
		Debug = { link = "Special" },

		Underlined = { style = { "underline" } },
		Bold = { style = { "bold" } },
		Italic = { style = { "italic" } },

		Error = { fg = C.red },
		Todo = { bg = C.yellow, fg = C.base, style = { "bold" } },
		
		-- Additional highlights
		qfLineNr = { fg = C.yellow },
		qfFileName = { fg = C.blue },
		htmlH1 = { fg = C.pink, style = { "bold" } },
		htmlH2 = { fg = C.blue, style = { "bold" } },
		
		-- Markdown
		markdownHeadingDelimiter = { fg = C.peach, style = { "bold" } },
		markdownCode = { fg = C.green },
		markdownCodeBlock = { fg = C.green },
		markdownLinkText = { fg = C.blue, style = { "underline" } },
		markdownItalic = { fg = C.text, style = { "italic" } },
		markdownBold = { fg = C.text, style = { "bold" } },
		markdownCodeDelimiter = { fg = C.teal },

		-- Diff
		diffAdded = { fg = C.green },
		diffRemoved = { fg = C.red },
		diffChanged = { fg = C.blue },
		diffOldFile = { fg = C.yellow },
		diffNewFile = { fg = C.peach },
		diffFile = { fg = C.blue },
		diffLine = { fg = C.overlay0 },
		diffIndexLine = { fg = C.teal },
		DiffAdd = { bg = C.surface0, fg = C.green },
		DiffChange = { bg = C.surface0, fg = C.blue },
		DiffDelete = { bg = C.surface0, fg = C.red },
		DiffText = { bg = C.surface1, fg = C.blue },

		-- Git
		gitcommitComment = { fg = C.overlay2, style = { "italic" } },
		gitcommitUnmerged = { fg = C.red },
		gitcommitOnBranch = { fg = C.subtext0 },
		gitcommitBranch = { fg = C.mauve },
		gitcommitDiscardedType = { fg = C.red },
		gitcommitSelectedType = { fg = C.green },
		gitcommitHeader = { fg = C.subtext0 },
		gitcommitUntrackedFile = { fg = C.teal },
		gitcommitDiscardedFile = { fg = C.red },
		gitcommitSelectedFile = { fg = C.green },
		gitcommitUnmergedFile = { fg = C.yellow },
		gitcommitFile = { fg = C.text },

		-- TreeSitter
		["@text"] = { fg = C.text },
		["@text.strong"] = { fg = C.text, style = { "bold" } },
		["@text.emphasis"] = { fg = C.text, style = { "italic" } },
		["@text.underline"] = { fg = C.text, style = { "underline" } },
		["@text.strike"] = { fg = C.text, style = { "strikethrough" } },
		["@text.title"] = { fg = C.blue, style = { "bold" } },
		["@text.literal"] = { fg = C.green },
		["@text.uri"] = { fg = C.teal, style = { "underline" } },
		["@text.math"] = { fg = C.mauve },
		["@text.reference"] = { fg = C.blue },
		["@text.todo"] = { fg = C.yellow, style = { "bold" } },
		["@text.note"] = { fg = C.blue },
		["@text.warning"] = { fg = C.peach },
		["@text.danger"] = { fg = C.red },

		["@comment"] = { fg = C.overlay2, style = O.styles.comments },
		["@error"] = { fg = C.red },
		["@none"] = { fg = C.text },
		["@preproc"] = { fg = C.mauve },
		["@define"] = { fg = C.mauve },
		["@operator"] = { fg = C.teal },

		["@punctuation.delimiter"] = { fg = C.teal },
		["@punctuation.bracket"] = { fg = C.teal },
		["@punctuation.special"] = { fg = C.teal },

		["@string"] = { fg = C.yellow },
		["@string.regex"] = { fg = C.peach },
		["@string.escape"] = { fg = C.red },
		["@string.special"] = { fg = C.teal },

		["@character"] = { fg = C.green },
		["@character.special"] = { fg = C.teal },

		["@boolean"] = { fg = C.red },
		["@number"] = { fg = C.red },
		["@float"] = { fg = C.red },

		["@function"] = { fg = C.green },
		["@function.call"] = { fg = C.green },
		["@function.builtin"] = { fg = C.green },
		["@function.macro"] = { fg = C.mauve },

		["@method"] = { fg = C.green },
		["@method.call"] = { fg = C.green },

		["@constructor"] = { fg = C.blue },
		["@parameter"] = { fg = C.blue },

		["@keyword"] = { fg = C.blue },
		["@keyword.function"] = { fg = C.blue },
		["@keyword.operator"] = { fg = C.blue },
		["@keyword.return"] = { fg = C.blue },

		["@conditional"] = { fg = C.blue },
		["@repeat"] = { fg = C.blue },
		["@debug"] = { fg = C.teal },
		["@label"] = { fg = C.blue },
		["@include"] = { fg = C.mauve },
		["@exception"] = { fg = C.blue },

		["@type"] = { fg = C.mauve },
		["@type.builtin"] = { fg = C.mauve },
		["@type.qualifier"] = { fg = C.blue },
		["@type.definition"] = { fg = C.mauve },

		["@storageclass"] = { fg = C.blue },
		["@attribute"] = { fg = C.mauve },
		["@field"] = { fg = C.teal },
		["@property"] = { fg = C.teal },

		["@variable"] = { fg = C.text },
		["@variable.builtin"] = { fg = C.blue },

		["@constant"] = { fg = C.red },
		["@constant.builtin"] = { fg = C.red },
		["@constant.macro"] = { fg = C.mauve },

		["@namespace"] = { fg = C.blue },
		["@symbol"] = { fg = C.teal },

		["@tag"] = { fg = C.blue },
		["@tag.attribute"] = { fg = C.mauve },
		["@tag.delimiter"] = { fg = C.teal },

		-- Language specific
		-- JavaScript/TypeScript
		jsFunction = { fg = C.blue },
		jsArrowFunction = { fg = C.blue },
		jsClassKeyword = { fg = C.blue },
		jsExtendsKeyword = { fg = C.blue },
		jsVariableDef = { fg = C.blue },
		jsFuncCall = { fg = C.blue },

		-- Python
		pythonBuiltin = { fg = C.mauve },
		pythonFunction = { fg = C.green },
		pythonDecorator = { fg = C.mauve },
		pythonDecoratorName = { fg = C.mauve },

		-- Rust
		rustKeyword = { fg = C.blue },
		rustModPath = { fg = C.mauve },
		rustFuncCall = { fg = C.blue },
		rustMacro = { fg = C.mauve },

		-- C/C++
		cInclude = { fg = C.mauve },
		cDefine = { fg = C.mauve },
		cppStructure = { fg = C.mauve },

		-- HTML
		htmlTag = { fg = C.teal },
		htmlEndTag = { fg = C.teal },
		htmlTagName = { fg = C.blue },
		htmlArg = { fg = C.mauve },

		-- CSS
		cssTagName = { fg = C.blue },
		cssClassName = { fg = C.mauve },
		cssClassNameDot = { fg = C.teal },
		cssProp = { fg = C.mauve },
		cssAttr = { fg = C.yellow },
	}
end

return M