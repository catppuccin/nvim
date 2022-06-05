local M = {}

function M.get(cp)
	-- local delimeters = cp.overlay2
	local operators = cp.sky
	local cl = cp.mauve -- conditionals, loops
	local keywords = cp.mauve

	local math_logic = cp.peach
	return {
    -- pink
    TSConditional = { fg = cp.pink },
    TSException = { fg = cp.pink },
    TSInclude = { fg = cp.pink },
    TSKeyword = { fg = cp.pink },
    TSKeywordFunction = { fg = cp.pink },
    TSKeywordOperator = { fg = cp.pink },
    TSRepeat = { fg = cp.pink },
    TSOperator = { fg = cp.pink },
    RubyModelMacro = { fg = cp.pink },
    RubyModelCallback = { fg = cp.pink },
    RubyModelValidations = { fg = cp.pink },
    rubyHelper = { fg = cp.pink },
    rubyViewHelper = { fg = cp.pink },
    rubyControl = { fg = cp.pink },
    rubyCurelyBlock = { fg = cp.pink },

    TSFuncMacro = { fg = cp.teal },

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
    rubyPredefinedConstant = { fg = cp.yellow },
    rubyPseudoVariable = { fg = cp.yellow },
    rubyConstant = { fg = cp.yellow },
    rubyBoolean = { fg = cp.yellow },

    -- green
    TSString = { fg = cp.green },
    TSLiteral = { fg = cp.green },
    TSLiteral = { fg = cp.green },
    rubyString = { fg = cp.green },

    -- blue
    TSMethod = { fg = cp.blue },
    TSFunction = { fg = cp.blue },

    -- sky
    TSAttribute = { fg = cp.sky },
    TSField = { fg = cp.sky },
    TSFuncBuiltin = { fg = cp.sky }, -- or peach
    TSProperty = { fg = cp.sky },
    TSSymbol = { fg = cp.sky },
    TSStringRegex = { fg = cp.sky },
    TSStringEscape = { fg = cp.sky }, -- or pink
    rubySymbol = { fg = cp.sky },

    -- red
    TSLabel = { fg = cp.maroon }, -- sapphire
    TSTag = { fg = cp.red }, -- mauve
    TSTagDelimiter = { fg = cp.red }, -- sky
    TSVariableBuiltin = { fg = cp.red },
    TSGlobalVariable = { fg = cp.red },
    TSPunctSpecial = { fg = cp.red }, -- sky
    TSParameter = { fg = cp.red }, -- maroon
    rubyBlockParameterList = { fg = cp.red },

    -- text
    TSAnnotation = { fg = cp.text },
    TSCharacter = { fg = cp.text },
    TSError = { fg = cp.text },
    TSNamespace = { fg = cp.text }, -- blue
    TSNone = { fg = cp.text },
    TSParameterReference = { fg = cp.text },
    TSPunctDelimiter = { fg = cp.text }, -- overlay2
    TSPunctBracket = { fg = cp.rosewater }, -- overlay2
    TSText = { fg = cp.text },
    TSStrong = { fg = cp.text, style = "bold" }, -- maroon
    TSEmphasis = { fg = cp.text, style = "italic" }, -- maroon
    TSUnderline = { fg = cp.text },
    TSStrike = { fg = cp.text },
    TSTitle = { fg = cp.text, style = "bold" }, -- blue
    TSMath = { fg = cp.text },
    TSEnviroment = { fg = cp.text },
    TSEnviromentName = { fg = cp.text },
		TSKeywordReturn = { fg = cp.mauve, style = cnf.styles.keywords or "NONE" },
		TSNote = { fg = cp.base, bg = cp.blue },
		TSWarning = { fg = cp.base, bg = cp.yellow },
		TSDanger = { fg = cp.base, bg = cp.red },
		tomlTSProperty = { fg = cp.blue }, -- Differentiates between string and properties
		TSTagAttribute = { fg = cp.teal, style = "italic" }, -- Tags like html tag names.

		TSComment = { fg = cp.surface1 },

		-- Markdown tresitter parser support
		TSURI = { fg = cp.rosewater, style = "italic,underline" }, -- urls, links and emails
		TSLiteral = { fg = cp.teal, style = "italic" }, -- used for inline code in markdown and for doc in python (""")
		TSTextReference = { fg = cp.lavender, style = "bold" }, -- references

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
