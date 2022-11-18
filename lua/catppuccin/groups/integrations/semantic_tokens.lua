local M = {}

function M.get()
	return {
		LspNamespace = { fg = C.blue, style = { "italic" } },
		LspType = { fg = C.yellow, style = O.styles.types or {} },
		LspClass = { fg = C.mauve, style = O.styles.keywords or {} },
		-- LspEnum = {},
		-- LspInterface =
		LspStruct = { fg = C.sapphire },
		LspTypeParameter = { fg = C.yellow, style = O.styles.types or {} }, -- For types.

		LspParameter = { fg = C.maroon, style = { "italic" } }, -- For parameters of a function.

		LspVariable = { fg = C.text, style = O.styles.variables or {} },
		LspProperty = { fg = C.teal, style = O.styles.properties or {} },
		-- LspEnumMember =
		-- LspEvent =
		LspFunction = { fg = C.blue, style = O.styles.functions or {} },
		LspMethod = { fg = C.blue, style = O.styles.functions or {} }, -- For method calls and definitions.
		LspMacro = { fg = C.teal, style = O.styles.functions or {} },
		LspKeyword = { fg = C.mauve, style = O.styles.keywords or {} },
		-- LspModifier =
		LspComment = { fg = C.surface2, style = O.styles.comments },
		LspString = { fg = C.green, style = O.styles.strings or {} },
		LspNumber = { fg = C.peach, style = O.styles.numbers or {} },
		-- LspRegexp =
		LspOperator = { fg = C.sky, style = O.styles.operators or {} },
		-- LspDeclaration =
		-- LspDefinition =
		-- LspReadonly =
		-- LspStatic =
		LspDeprecated = { fg = C.surface2, style = { "strikethrough" } },
		-- LspAbstract =
		-- LspAsync =
		-- LspModification =
		-- LspDocumentation =
		-- LspDefaultLibrary =
	}
end

return M
