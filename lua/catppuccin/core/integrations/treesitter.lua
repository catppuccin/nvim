local M = {}

function M.get(cp)
	-- local delimeters = cp.overlay2
	local operators = cp.sky
	local cl = cp.mauve -- conditionals, loops
	local keywords = cp.mauve

	local math_logic = cp.peach
	return {
    -- mauve
    TSConditional = { fg = cp.mauve },
    TSException = { fg = cp.mauve },
    TSInclude = { fg = cp.mauve },
    TSKeyword = { fg = cp.mauve },
    TSKeywordFunction = { fg = cp.mauve },
    TSKeywordOperator = { fg = cp.mauve },
    TSRepeat = { fg = cp.mauve },
    TSOperator = { fg = cp.mauve },
    RubyModelMacro = { fg = cp.mauve },
    RubyModelCallback = { fg = cp.mauve },
    RubyModelValidations = { fg = cp.mauve },

    -- yellow
    TSConstructor = { fg = cp.yellow },
    TSType = { fg = cp.yellow },
    TSConstant = { fg = cp.yellow },
    TSBoolean = { fg = cp.yellow },
    TSFloat = { fg = cp.yellow },
    TSNumber = { fg = cp.yellow },
    TSConstBuiltin = { fg = cp.yellow },
    TSConstMacro = { fg = cp.yellow },
    TSTypeBuiltin = { fg = cp.yellow },

    -- green
    TSString = { fg = cp.green },
    TSLiteral = { fg = cp.green },

    -- blue
    TSMethod = { fg = cp.blue },
    TSFunction = { fg = cp.blue },

    -- teal
    TSAttribute = { fg = cp.teal },
    TSField = { fg = cp.teal },
    TSFuncBuiltin = { fg = cp.teal }, -- or peach
    TSProperty = { fg = cp.teal },
    TSSymbol = { fg = cp.teal },
    TSStringRegex = { fg = cp.teal },
    TSStringEscape = { fg = cp.teal }, -- or pink

		-- TSPunctSpecial = { fg = cp.sky, style = cnf.styles.operators or "NONE" }, -- For special punctutation that does not fall in the catagories before.
		-- TSNamespace = { fg = cp.blue, style = "italic" }, -- For identifiers referring to modules and namespaces.
		-- TSVariableBuiltin = { fg = cp.red }, -- Variable names that are defined by the languages, like this or self.
		-- TSFuncMacro = { fg = cp.teal, style = cnf.styles.functions or "NONE" }, -- For macro defined functions (calls and definitions): each macro_rules in Ruscp.
		-- TSParameter = { fg = cp.maroon, style = "italic" }, -- For parameters of a function.
		-- TSKeywordReturn = { fg = cp.mauve, style = cnf.styles.keywords or "NONE" },
		-- TSNote = { fg = cp.base, bg = cp.blue },
		-- TSWarning = { fg = cp.base, bg = cp.yellow },
		-- TSDanger = { fg = cp.base, bg = cp.red },
		-- TSLabel = { fg = cp.sapphire }, -- For labels: label: in C and :label: in Lua.
		-- tomlTSProperty = { fg = cp.blue }, -- Differentiates between string and properties
		-- TSPunctDelimiter = { fg = cp.overlay2 }, -- For delimiters ie: .
		-- TSPunctBracket = { fg = cp.overlay2 }, -- For brackets and parenthesis.
		-- TSVariable = { fg = cp.text, style = cnf.styles.variables or "NONE" }, -- Any variable name that does not have another highlighcp.
		-- TSTagAttribute = { fg = cp.teal, style = "italic" }, -- Tags like html tag names.
		-- TSTag = { fg = cp.mauve }, -- Tags like html tag names.
		-- TSTagDelimiter = { fg = cp.sky }, -- Tag delimiter like < > /
		-- TSText = { fg = cp.text }, -- For strings considerated text in a markup language.

		-- Markdown tresitter parser support
		TSURI = { fg = cp.rosewater, style = "italic,underline" }, -- urls, links and emails
		TSLiteral = { fg = cp.teal, style = "italic" }, -- used for inline code in markdown and for doc in python (""")
		TSTextReference = { fg = cp.lavender, style = "bold" }, -- references
		TSTitle = { fg = cp.blue, style = "bold" }, -- titles like: # Example
		TSEmphasis = { fg = cp.maroon, style = "italic" }, -- bold
		TSStrong = { fg = cp.maroon, style = "bold" }, -- italic

		-- json
		jsonTSLabel = { fg = cp.blue }, -- For labels: label: in C and :label: in Lua.

		-- lua
		luaTSConstructor = { fg = cp.lavender }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.

		-- cpp
		cppTSProperty = { fg = cp.text },

		-- yaml
		yamlTSField = { fg = cp.blue }, -- For fields.
	}
end

return M
