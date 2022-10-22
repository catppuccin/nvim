local M = {}

function M.get()
	return {
		LspNamespace = { fg = cp.blue, style = { "italic" } },
		LspType = { fg = cp.yellow, style = cnf.styles.types or {} },
		LspClass = { fg = cp.mauve, style = cnf.styles.keywords or {} },
		-- LspEnum = {},
		-- LspInterface =
		LspStruct = { fg = cp.sapphire },
		LspTypeParameter = { fg = cp.yellow, style = cnf.styles.types or {} }, -- For types.

		LspParameter = { fg = cp.maroon, style = { "italic" } }, -- For parameters of a function.

		LspVariable = { fg = cp.text, style = cnf.styles.variables or {} },
		LspProperty = { fg = cp.teal, style = cnf.styles.properties or {} },
		-- LspEnumMember =
		-- LspEvent =
		LspFunction = { fg = cp.blue, style = cnf.styles.functions or {} },
		LspMethod = { fg = cp.blue, style = cnf.styles.functions or {} }, -- For method calls and definitions.
		LspMacro = { fg = cp.teal, style = cnf.styles.functions or {} },
		LspKeyword = { fg = cp.mauve, style = cnf.styles.keywords or {} },
		-- LspModifier =
		LspComment = { fg = cp.surface2, style = cnf.styles.comments },
		LspString = { fg = cp.green, style = cnf.styles.strings or {} },
		LspNumber = { fg = cp.peach, style = cnf.styles.numbers or {} },
		-- LspRegexp =
		LspOperator = { fg = cp.sky, style = cnf.styles.operators or {} },
		-- LspDeclaration =
		-- LspDefinition =
		-- LspReadonly =
		-- LspStatic =
		LspDeprecated = { fg = cp.surface2, style = { "strikethrough" } },
		-- LspAbstract =
		-- LspAsync =
		-- LspModification =
		-- LspDocumentation =
		-- LspDefaultLibrary =
	}
end

return M
