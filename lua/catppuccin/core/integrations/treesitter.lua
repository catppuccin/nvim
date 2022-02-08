local M = {}

function M.get(cp)
	local delimeters = cp.gray1
	local operators = cp.sky
	local cl = cp.mauve -- conditionals, loops
	local keywords = cp.red

	local math_logic = cp.peach
	return {
		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing, tree-sitter support is a WIP, group names may change.
		-- By default, most of these groups link to an appropriate Vim group,
		-- TSError -> Error for example, so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.
		TSField = { fg = cp.rosewater }, -- For fields.
		TSProperty = { fg = cp.yellow, style = "italic" }, -- Same as TSField.
		TSInclude = { fg = cp.teal, style = "italic" }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
		TSOperator = { fg = operators, style = "bold" }, -- For any operator: +, but also -> and * in cp.
		TSKeywordOperator = { fg = operators, style = "bold" }, -- For new keyword operator
		TSPunctSpecial = { fg = cp.maroon, style = "bold" }, -- For special punctutation that does not fall in the catagories before.

		TSFloat = { fg = math_logic, style = "bold,italic" }, -- For floats.
		TSNumber = { fg = math_logic, style = "bold,italic" }, -- For all numbers
		TSBoolean = { fg = math_logic, style = "bold,italic" }, -- For booleans.

		TSConstructor = { fg = cp.lavender }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
		TSConstant = { fg = cp.peach }, -- For constants
		TSConditional = { fg = cl, style = "bold" }, -- For keywords related to conditionnals.
		TSRepeat = { fg = cl, style = "bold" }, -- For keywords related to loops.
		TSException = { fg = cp.peach, style = cnf.styles.keywords }, -- For exception related keywords.

		-- builtin
		TSConstBuiltin = { fg = cp.lavender, style = cnf.styles.keywords }, -- For constant that are built in the language: nil in Lua.
		TSFuncBuiltin = { fg = cp.peach, style = "italic" }, -- For builtin functions: table.insert in Lua.
		TSTypeBuiltin = { fg = cp.yellow, style = "italic" }, -- For builtin types.
		TSVariableBuiltin = { fg = cp.teal, style = "italic" }, -- Variable names that are defined by the languages, like this or self.

		TSFunction = { fg = cp.blue, style = cnf.styles.functions }, -- For function (calls and definitions).
		TSFuncMacro = { fg = cp.red }, -- For macro defined functions (calls and definitions): each macro_rules in Ruscp.
		TSParameter = { fg = cp.rosewater, style = "italic" }, -- For parameters of a function.
		TSKeywordFunction = { fg = cp.maroon, style = cnf.styles.keywords }, -- For keywords used to define a fuction.
		TSKeyword = { fg = keywords, style = cnf.styles.keywords }, -- For keywords that don't fall in previous categories.
		TSKeywordReturn = { fg = cp.pink },
		-- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		-- TSAttribute         = { };    -- (unstable) TODO: docs
		-- TSCharacter         = { };    -- For characters.
		-- TSgray0           = { };    -- For gray0 blocks.
		TSNote = { fg = cp.black2, bg = cp.blue },
		TSWarning = { fg = cp.black2, bg = cp.yellow },
		TSDanger = { fg = cp.black2, bg = cp.red },
		-- TSConstMacro        = { };    -- For constants that are defined by macros: NULL in cp.
		-- TSError = { fg = cp.red }, -- For syntax/parser errors.
		-- rustTSField = { fg = cp.black4 }, -- For fields.
		TSLabel = { fg = cp.blue }, -- For labels: label: in C and :label: in Lua.
		TSMethod = { fg = cp.blue, style = "italic" }, -- For method calls and definitions.
		TSNamespace = { fg = cp.rosewater, style = "italic" }, -- For identifiers referring to modules and namespaces.
		-- TSNone              = { };    -- TODO: docs
		-- TSParameterReference= { };    -- For references to parameters of a function.
		tomlTSProperty = { fg = cp.blue }, -- Differentiates between string and properties
		TSPunctDelimiter = { fg = cp.teal }, -- For delimiters ie: .
		TSPunctBracket = { fg = delimeters }, -- For brackets and parenthesis.
		TSString = { fg = cp.green }, -- For strings.
		TSStringRegex = { fg = cp.peach, style = cnf.styles.strings }, -- For regexes.
		-- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
		TSType = { fg = cp.yellow }, -- For types.
		TSVariable = { fg = cp.white, style = cnf.styles.variables }, -- Any variable name that does not have another highlighcp.
		TSTagAttribute = { fg = cp.mauve, style = "italic" }, -- Tags like html tag names.
		TSTag = { fg = cp.peach }, -- Tags like html tag names.
		TSTagDelimiter = { fg = cp.maroon }, -- Tag delimiter like < > /
		TSText = { fg = cp.white }, -- For strings considerated text in a markup language.
		-- TSEmphasis          = { };    -- For text to be represented with emphasis.
		-- TSUnderline         = { };    -- For text to be represented with an underline.
		-- TSStrike            = { };    -- For strikethrough texcp.
		-- TSTitle             = { };    -- Text that is part of a title.
		-- TSLiteral           = { };    -- Literal texcp.
		-- TSURI               = { };    -- Any URI like a link or email.
		--
		-- Markdown tresitter parser support
		TSURI = { fg = cp.rosewater, style = "italic,underline" }, -- urls, links and emails
		TSLiteral = { fg = cp.teal, style = "italic" }, -- used for inline code in markdown and for doc in python (""")
		TSTextReference = { fg = cp.lavender, style = "bold" }, -- references
		TSTitle = { fg = cp.blue, style = "bold" }, -- titles like: # Example
		TSEmphasis = { fg = cp.maroon, style = "italic" }, -- bold
		TSStrong = { fg = cp.maroon, style = "bold" }, -- italic
		TSStringEscape = { fg = cp.pink, style = cnf.styles.strings }, -- For escape characters within a string.

		-- bash
		bashTSFuncBuiltin = { fg = cp.red, style = "italic" },
		bashTSParameter = { fg = cp.yellow, style = "italic" },

		-- lua
		luaTSField = { fg = cp.lavender },
		luaTSConstructor = { fg = cp.flamingo }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.

		-- java
		javaTSConstant = { fg = cp.teal },

		-- typescript
		typescriptTSProperty = { fg = cp.lavender, style = "italic" }, -- Same as TSField.

		-- css
		cssTSType = { fg = cp.lavender },
		cssTSProperty = { fg = cp.yellow, style = "italic" }, -- Same as TSField.

		-- cpp
		cppTSProperty = { fg = cp.white },
	}
end

return M
